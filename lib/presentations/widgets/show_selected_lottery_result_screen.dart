import 'package:flutter/material.dart';
import 'package:lottery_results_app/presentations/widgets/progress_indicator.dart';
import 'package:share_plus/share_plus.dart';

import '../../const.dart';
import '../../repositoris/lottery_results_repository.dart';

class SelectedLotteyResultScreen extends StatelessWidget {
  SelectedLotteyResultScreen({
    super.key,
    this.selectedLotteryLink,
    required this.date,
    required this.lotteryName,
  });
  final String? selectedLotteryLink;
  final String date;
  final String lotteryName;
  Map<String, List<String>>? lotteryResultMap;

  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   backgroundColor: const Color.fromARGB(246, 218, 221, 226),
        //   appBar: CustomAppBar(
        //     title: lotteryName + date,
        //     lotteryResultMap: lotteryResultMap,
        //   ),
        FutureBuilder(
      future: fetchData(context, selectedLotteryLink!),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            backgroundColor: const Color.fromARGB(246, 218, 221, 226),
            appBar:
                CustomAppBar(title: lotteryName + date, lotteryResultMap: null),
            body: const Center(
              child: ProgressIndicatorWidget(), // Loading state
            ),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'), // Error state
          );
        } else {
          // Data is loaded successfully, display it
          final lotteryResultMap = snapshot.data;

          final formattedResults = formatLotteryResults(lotteryResultMap!);

          return Scaffold(
            backgroundColor: const Color.fromARGB(246, 218, 221, 226),
            appBar: CustomAppBar(
              title: lotteryName + date,
              lotteryResultMap: lotteryResultMap,
            ),
            body: ListView(
              children: formattedResults,
            ),
          );
        }
      },
    );
  }
}

String formatLotteryResultText(Map<String, List<String>> lotteryResultMap) {
  String formattedText = '';

  lotteryResultMap.forEach((prize, numbers) {
    final unwantedStrings = [
      'FOR', 'THE', 'TICKETS', 'ENDING', 'WITH', 'THE', 'FOLLOWING',
      'NUMBERS',
      'IT',
      'Support',
      ':',
      'NIC',
      'Kerala',
      'The',
      'prize',
      'winners',
      'are',
      'advised',
      'to',
      'verify',
      'the',
      'winning',
      'numbers',
      'with',
      'the',
      'results',
      'published',
      'in',
      'the',
      'Government',
      'Gazette',
      'and',
      'surrender',
      'the',
      'winning',
      'tickets',
      'within',
      'days.',
      'Sd/-',
      'RAJKAPOOR',
      'Deputy',
      'Director',
      'Next',
      'MAYA.N.PILLAY',
      'NIRMAL',
      'Draw',
      'will',
      'be',
      'held',
      'on', 'at', 'GORKY', 'BHAVAN', 'NEAR', 'BAKERY', 'JUNCTION',
      'THIRUVANANTHAPURAM',
      'Of',
      'State',
      'Lotteries',
      'Thiruvananthapuram',
      'This',
      'is',
      'a',
      'digitally',
      'signed',
      'document',
      'may', 'WIN-WIN',
      'verified',
      'through', 'veriﬁed', 'FIFTY-FIFTY', 'SHAJU', 'AKSHAYA', 'MANOJ',
      'JAYAKUMAR', 'AJI',
      // Add any other unwanted strings here
    ];
    final dateRegex = RegExp(r'\d{2}/\d{2}/\d{4}');
    // Remove empty strings and unwanted information

    final filteredNumbers = numbers
        .where((item) =>
            item.isNotEmpty &&
            !item.contains(RegExp(r'^\d+\)')) &&
            !item.contains(RegExp(r'\(\w+\)')) &&
            !unwantedStrings.any((unwanted) => item.contains(unwanted)))
        .map((item) {
      return item.replaceAll(dateRegex, '').trim();
    }).toList();
    formattedText += '$prize :\n${filteredNumbers.join('  ')}\n\n';
  });

  return formattedText;
}

List<Widget> formatLotteryResults(Map<String, List<String>> lotteryResultMap) {
  final List<Widget> formattedResults = [];

  lotteryResultMap.forEach((prize, numbers) {
    final unwantedStrings = [
      'FOR', 'THE', 'TICKETS', 'ENDING', 'WITH', 'THE', 'FOLLOWING',
      'NUMBERS',
      'IT',
      'Support',
      ':',
      'NIC',
      'Kerala',
      'The',
      'prize',
      'winners',
      'are',
      'advised',
      'to',
      'verify',
      'the',
      'winning',
      'numbers',
      'with',
      'the',
      'results',
      'published',
      'in',
      'the',
      'Government',
      'Gazette',
      'and',
      'surrender',
      'the',
      'winning',
      'tickets',
      'within',
      'days.',
      'Sd/-',
      'RAJKAPOOR',
      'Deputy',
      'Director',
      'Next',
      'MAYA.N.PILLAY',
      'NIRMAL',
      'Draw',
      'will',
      'be',
      'held',
      'on', 'at', 'GORKY', 'BHAVAN', 'NEAR', 'BAKERY', 'JUNCTION',
      'THIRUVANANTHAPURAM',
      'Of',
      'State',
      'Lotteries',
      'Thiruvananthapuram',
      'This',
      'is',
      'a',
      'digitally',
      'signed',
      'document',
      'may', 'WIN-WIN',
      'verified',
      'through', 'veriﬁed', 'FIFTY-FIFTY', 'SHAJU', 'AKSHAYA', 'MANOJ',
      'JAYAKUMAR', 'AJI',
      // Add any other unwanted strings here
    ];
    final dateRegex = RegExp(r'\d{2}/\d{2}/\d{4}');
    // Remove empty strings and unwanted information

    final filteredNumbers = numbers
        .where((item) =>
            item.isNotEmpty &&
            !item.contains(RegExp(r'^\d+\)')) &&
            !item.contains(RegExp(r'\(\w+\)')) &&
            !unwantedStrings.any((unwanted) => item.contains(unwanted)))
        .map((item) {
      return item.replaceAll(dateRegex, '').trim();
    }).toList();

    Radius containerRadius = const Radius.circular(10);

    // Create the formatted result as a widget
    final formattedResult = Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: primecolor, // You should define primecolor
            borderRadius: BorderRadius.only(
              topLeft: containerRadius,
              topRight: containerRadius,
            ),
          ),
          alignment: Alignment.center,
          height: 24,
          width: 375,
          child: Text(
            prize,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: containerRadius,
              bottomRight: containerRadius,
            ),
          ),
          alignment: Alignment.center,
          width: 375,
          child: Text(
            filteredNumbers.join('  '), // Join the numbers with spaces
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    );

    formattedResults.add(formattedResult);
  });

  return formattedResults;
}

Future<Map<String, List<String>>> fetchData(
    BuildContext context, String url) async {
  String? selectedLotteryResultText =
      await LotteryResultsRepo().fetchSelectedLottetyData(url);
  if (selectedLotteryResultText != null) {
    Map<String, List<String>> extractedResultsAsMap =
        LotteryResultsRepo().extractLotteryResults(selectedLotteryResultText);
    return extractedResultsAsMap;
  } else {
    return {};
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.lotteryResultMap,
  });
  final String title;
  final Map<String, List<String>>? lotteryResultMap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      centerTitle: true,
      backgroundColor: const Color.fromARGB(246, 18, 96, 223),
      title: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          title,
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      actions: [
        IconButton(
            onPressed: lotteryResultMap == null
                ? null
                : () {
                    String sharableText =
                        'RESULT OF $title\n\n${formatLotteryResultText(lotteryResultMap!)}';

                    Share.share(sharableText);
                  },
            icon: const Icon(Icons.share))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
