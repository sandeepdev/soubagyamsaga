// import 'package:http/http.dart' as http;
// import 'package:syncfusion_flutter_pdf/pdf.dart';


// // // String getCategoryForNumber(String text, String numberToFind) {
// // //   // Split the text by lines to process each section separately
// // //   final lines = text.split('\n');
// // //   final extractedData = <String, String>{};

// // //   // Variable to store the current prize category
// // //   String currentCategory = "";

// // //   // Iterate through each line and check for the number and its category
// // //  for (final line in lines) {
// // //     if (line.contains("1st Prize Rs :")) {
// // //       currentCategory = "1st Prize";
// // //       final prizeNumber = line.split("1st Prize Rs :")[1].trim();
// // //       extractedData[currentCategory] = prizeNumber;
// // //     } else if (line.contains("2nd Prize Rs :")) {
// // //       currentCategory = "2nd Prize";
// // //       final prizeNumber = line.split("2nd Prize Rs :")[1].trim();
// // //       extractedData[currentCategory] = prizeNumber;
// // //     } else if (line.contains("3rd Prize Rs :")) {
// // //       currentCategory = "3rd Prize";
// // //       final prizeNumber = line.split("3rd Prize Rs :")[1].trim();
// // //       extractedData[currentCategory] = prizeNumber;
// // //     } else if (line.contains("4th Prize-Rs :")) {
// // //       currentCategory = "4th Prize";
// // //       final prizeNumbers = line.split("4th Prize-Rs :")[1].trim().split(' ');
// // //       extractedData[currentCategory] = prizeNumbers.join(' ');
// // //     } else if (line.contains("5th Prize-Rs :")) {
// // //       currentCategory = "5th Prize";
// // //       final prizeNumbers = line.split("5th Prize-Rs :")[1].trim().split(' ');
// // //       extractedData[currentCategory] = prizeNumbers.join(' ');
// // //     } else if (line.contains("6th Prize-Rs :")) {
// // //       currentCategory = "6th Prize";
// // //       final prizeNumbers = line.split("6th Prize-Rs :")[1].trim().split(' ');
// // //       extractedData[currentCategory] = prizeNumbers.join(' ');
// // //     } else if (line.contains("7th Prize-Rs :")) {
// // //       currentCategory = "7th Prize";
// // //       final prizeNumbers = line.split("7th Prize-Rs :")[1].trim().split(' ');
// // //       extractedData[currentCategory] = prizeNumbers.join(' ');
// // //     }
// // //   }

// //   // Print the extracted data as a map
// //   print(extractedData);
// //   extractedData.forEach((key, value) {
// //   print("$key: $value");
// // });

// //   return currentCategory.isNotEmpty ? currentCategory : "Number not found";
// // }

// Future<String> fetchAndExtractTextFromPDF() async {
//   const pdfUrl =
//       'https://www.lotteryagent.kerala.gov.in/results/c4fb1af9-c1b3-1938-66da-d7818422e6f1';
//   final response = await http.get(Uri.parse(pdfUrl));

//   if (response.statusCode == 200) {
//     final pdfBytes = response.bodyBytes;
//     final PdfDocument document = PdfDocument(
//       inputBytes: pdfBytes,
//     );
//     final StringBuffer buffer = StringBuffer();

//     for (int i = 0; i < document.pages.count; i++) {
//       String text = PdfTextExtractor(document).extractText(startPageIndex: i);
//       buffer.write(text);
//     }
//     final String combinedText = buffer.toString();
//     // String texte = PdfTextExtractor(document).extractText(startPageIndex: 1);
//     // print(texte);

//     document.dispose();
//     // String category = getCategoryForNumber(combinedText, "172713");
//     // List<String> lines = combinedText.split('\n');
//     // final data = <String, String>{};
//     // String currentHeading = '';
//     // final RegExp headingRegex = RegExp(r'Prize');
//     // for (String line in lines) {
//     //   if (line.isNotEmpty) {
//     //     if (headingRegex.hasMatch(line)) {
//     //       // Extract the heading
//     //       currentHeading = line;

//     //       data[currentHeading] = '';
//     //     } else {
//     //       // Add the line to the current heading's value
//     //       data[currentHeading] =
//     //           '${data[currentHeading] ?? ''}${line.trim()}\n';
//     //     }
//     //   }
//     // }
//     //  data.removeWhere((key, value) => value.trim().isEmpty);
//     final resultMap = extractLotteryResults(combinedText);
//     const numberToFind ='PL 869981'; // Replace with the number you want to find
//     final foundPrize = findNumberInResults(numberToFind, resultMap);
//     if (foundPrize != null) {
//       print('$numberToFind is a winner in $foundPrize.');
//     } else {
//       final lastFourDigits = numberToFind.substring(numberToFind.length - 4);
//       final remainingPrizes = resultMap.keys
//           .where((key) =>
//               key != '1st Prize' &&
//               key != 'Cons Prize' &&
//               key != '2nd Prize' &&
//               key != '3rd Prize')
//           .toList();

//       final foundInRemaining =
//           findNumberInRemaining(lastFourDigits, resultMap, remainingPrizes);

//       if (foundInRemaining != null) {
//         print('$lastFourDigits is a winner in $foundInRemaining.');
//       } else {
//         print('Number not found in any prizes.');
//       }
//     }

//     return combinedText;
//   } else {
//     throw Exception('Failed to fetch PDF from URL: $pdfUrl');
//   }
// }

// Map<String, List<String>> extractLotteryResults(String text) {
//   final resultMap = <String, List<String>>{};
//   final lines = text.split('\n');
//   String currentPrize = '';

//   for (final line in lines) {
//     if (line.startsWith('1st Prize') ||
//         line.startsWith('Cons Prize') ||
//         line.startsWith('2nd Prize') ||
//         line.startsWith('3rd Prize') ||
//         line.startsWith('4th Prize') ||
//         line.startsWith('5th Prize') ||
//         line.startsWith('6th Prize') ||
//         line.startsWith('7th Prize')) {
//       currentPrize = line.trim();

//       resultMap[currentPrize] = [];
//     } else if (line.isNotEmpty && !line.startsWith('Page')) {
//       if (currentPrize.isNotEmpty) {
//         resultMap[currentPrize]!.addAll(line.trim().split(' '));
//       }
//     }
//   }

//   return resultMap;
// }

// String? findNumberInResults(
//     String number, Map<String, List<String>> resultMap) {
//   String prefix = number.substring(0, 2);
//   String actualNumber = number.substring(2).trim();
//   for (final entry in resultMap.entries) {
//     final numbers = entry.value;

//     if (numbers.contains(actualNumber) && number.contains(prefix)) {
//       return entry.key;
//     }
//   }
//   return null;
// }

// String? findNumberInRemaining(String lastFourDigits,
//     Map<String, List<String>> resultMap, List<String> remainingPrizes) {
//   for (final prize in remainingPrizes) {
//     final numbers = resultMap[prize]!;
//     for (final number in numbers) {
//       if (number.endsWith(lastFourDigits)) {
//         return prize;
//       }
//     }
//   }
//   return null;
// }
