import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as html;
import 'package:lottery_results_app/models/lottery_data_results_model/lottery_data_results_model.dart';
// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_pdf/pdf.dart';

class LotteryResultsRepo {
  String extractLotteryName(String input) {
    final RegExp regex = RegExp(r'(.+)-\d{2}/\d{2}/\d{4} \([A-Z]+-\d+\)');
    final Match? match = regex.firstMatch(input);

    if (match != null) {
      return match.group(1) ??
          input; // Extract the matched group or return the input as is
    }

    return input; // Return the input as is if no '-' found
  }

  Future<List<LotteryResult>> fetchLotteryResults() async {
    final response = await http.post(
        Uri.parse('https://www.lotteryagent.kerala.gov.in/result/public/'));

    if (response.statusCode == 200) {
      final document = html.parse(response.body);
      final tbody = document.querySelector('tbody');
      final List<LotteryResult> result = [];
      if (tbody != null) {
        final rows = tbody.querySelectorAll('tr');
        for (final row in rows) {
          final tdList = row.querySelectorAll('td');

          if (tdList.isNotEmpty) {
            final lotteryName =
                extractLotteryName(tdList[1].text); // First <td> element
            final lotteryDate = tdList[2].text; // Second <td> element
            final String? viewLink = tdList[3].querySelector('a')?.attributes[
                'href']; // Third <td> element with a link (if present)
            final lotteryResult = LotteryResult(
                lotteryName: lotteryName,
                date: lotteryDate,
                viewLink: viewLink);
            result.add(lotteryResult);
          }
        }
      }
      return result;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<LotteryResult?> fetchSelectedLottery(String date) async {
    final response = await http.post(
        Uri.parse('https://www.lotteryagent.kerala.gov.in/result/public/'));
    if (response.statusCode == 200) {
      final document = html.parse(response.body);
      final tbody = document.querySelector('tbody');
      if (tbody != null) {
        // Find all the <tr> elements within <tbody>
        final rows = tbody.querySelectorAll('tr');

        for (final row in rows) {
          final tdList = row.querySelectorAll('td');
          if (tdList[2].text == date) {
            final lotteryName =
                extractLotteryName(tdList[1].text); // First <td> element
            final lotteryDate = tdList[2].text; // Second <td> element
            final String? viewLink = tdList[3].querySelector('a')?.attributes[
                'href']; // Third <td> element with a link (if present)
            final lotteryResult = LotteryResult(
                lotteryName: lotteryName,
                date: lotteryDate,
                viewLink: viewLink);
            return lotteryResult;
          }
        }
      }
    }
    return null;
  }

  Future<String?> fetchSelectedLottetyData(String pdfLink) async {
    final pdfUrl = 'https://www.lotteryagent.kerala.gov.in$pdfLink';
    final response = await http.get(Uri.parse(pdfUrl));
    if (response.statusCode == 200) {
      final pdfBytes = response.bodyBytes;
      final PdfDocument document = PdfDocument(
        inputBytes: pdfBytes,
      );
      final StringBuffer buffer = StringBuffer();
      for (int i = 0; i < document.pages.count; i++) {
        String text = PdfTextExtractor(document).extractText(startPageIndex: i);
        buffer.write(text);
      }
      document.dispose();
      final String combinedText = buffer.toString();
      return combinedText;
    }
    return null;
  }

  Future<List<String>> fetchAndExtractTextFromPDF(
      String pdfLink, String lotteryNumber) async {
    const String congratulations = 'Congratulations';

    final String? combinedText = await fetchSelectedLottetyData(pdfLink);
    if (combinedText != null) {
      final resultMap = extractLotteryResults(combinedText);

      final foundPrize = findNumberInResults(lotteryNumber, resultMap);

      if (foundPrize != null) {
        return [congratulations, foundPrize];
      } else {
        final lastFourDigits =
            lotteryNumber.substring(lotteryNumber.length - 4);
        List<String> prizesToRemove = [
          '1st Prize',
          'Cons Prize',
          '2nd Prize',
          '3rd Prize'
        ];
        // final remainingPrizes = resultMap.keys
        //     .where((key) =>
        //         key != '1st Prize Rs ' &&
        //         key != 'Cons Prize' &&
        //         key != '2nd Prize' &&
        //         key != '3rd Prize')
        //     .toList();

        final remainingPrizes = resultMap.keys.where((key) {
          return !prizesToRemove.any((substring) => key.contains(substring));
        }).toList();

        final foundInRemaining =
            findNumberInRemaining(lastFourDigits, resultMap, remainingPrizes);

        if (foundInRemaining != null) {
          return [congratulations, foundInRemaining];
        }
        return ['Sorry', 'NO PRIZE THIS TIME'];
      }
    }
    throw Exception('Failed to fetch lottery res');
  }

  Map<String, List<String>> extractLotteryResults(String text) {
    final resultMap = <String, List<String>>{};
    final lines = text.split('\n');
    String currentPrize = '';

    for (final line in lines) {
      if (line.startsWith('1st Prize') ||
          line.startsWith('Cons Prize') ||
          line.startsWith('2nd Prize') ||
          line.startsWith('3rd Prize') ||
          line.startsWith('4th Prize') ||
          line.startsWith('5th Prize') ||
          line.startsWith('6th Prize') ||
          line.startsWith('7th Prize') ||
          line.startsWith('8th Prize')) {
        currentPrize = line.trim();

        resultMap[currentPrize] = [];
      } else if (line.isNotEmpty && !line.startsWith('Page')) {
        if (currentPrize.isNotEmpty) {
          resultMap[currentPrize]!.addAll(line.trim().split(' '));
        }
      }
    }

    return resultMap;
  }

  String? findNumberInResults(
      String number, Map<String, List<String>> resultMap) {
    // String prefix1 = number.substring(0, 2);
    String prefix = number
        .substring(0, 2)
        .replaceAll(RegExp(r'[^a-zA-Z]'), '')
        .toUpperCase();

    String actualNumber = number.substring(2).trim();
    // print(resultMap.keys);
    List<String> searchStrings = [
      '1st Prize',
      'Cons Prize',
      '2nd Prize',
      '3rd Prize'
    ];

    final prizeToSearch = resultMap.keys.where((key) {
      return searchStrings.any((substring) => key.contains(substring));
    }).toList();

    for (final prize in prizeToSearch) {
      final numbers = resultMap[prize];

      if (numbers != null &&
          numbers.contains(actualNumber) &&
          numbers.contains(prefix)) {
        return prize;
      }
    }
    return null;
  }

  String? findNumberInRemaining(String lastFourDigits,
      Map<String, List<String>> resultMap, List<String> remainingPrizes) {
    for (final prize in remainingPrizes) {
      final numbers = resultMap[prize]!;

      for (final number in numbers) {
        if (number.endsWith(lastFourDigits)) {
          return prize;
        }
      }
    }
    return null;
  }
}
