import 'package:flutter/material.dart';

// Future<String> fetchHTMLContent() async {
//   final response = await http.get(
//       Uri.parse('https://result.keralalotteries.com/detailsofdrawweb.php'));
//   if (response.statusCode == 200) {
//     return response.body;
//   } else {
//     throw Exception('Failed to load HTML');
//   }
// }

// Future<void> parseHTML() async {
//   final htmlContent = await fetchHTMLContent();
//   final document = htmlParser.parse(htmlContent);

//   // Now, you can navigate and extract data from the HTML document.
//   // For example, to get the options within the select tag:
//   final selectElement = document.querySelector('#lotterydet');
//   final options = selectElement?.querySelectorAll('option');

//   if (options != null) {
//     for (final option in options) {
//       final value = option.attributes['value'];
//       final text = option.text;
//       print({value,text});
//       // Do something with the value and text
//     }
//   }

//   // You can continue to navigate and extract data as needed.
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Future<void> parseHTML() async {
  //   // final htmlContent = await fetchHTMLContent();
  //   // final document = htmlParser.parse(htmlContent);

  //   // Define the form data
  //   final formData = {
  //     'value': '58',
  //   };
  //   final response = await http.post(
  //       Uri.parse('https://result.keralalotteries.com/detailsofdrawweb.php'),
  //       body: formData);
  //   if (response.statusCode == 200) {
  //     final document = parse(response.body);
  //     final table = document.querySelector('#lotterydet');
  //     // final rows = table?.querySelectorAll('td[width="611"]');
  //     print(table);
  //   } else {
  //     // Handle error, e.g., network issues or server errors
  //     print('Failed to fetch data. Status code: ${response.statusCode}');
  //   }
  //   // final selectElement = document.querySelector('#lotterydet');
  //   // final options = selectElement?.querySelectorAll('option');

  //   // if (options != null) {
  //   //   for (final option in options) {
  //   //     final value = option.attributes['value'];
  //   //     final text = option.text;
  //   //     print({value,text});
  //   //     // Do something with the value and text
  //   //   }

  //   // You can continue to navigate and extract data as needed.
  // }

  String selectedLotteryName = '52';
  // Future<void> fetchDataForSelectedLottery() async {
  //   print('inside');
  //   // Send a POST request with the selected lottery name
  //   final response = await http.post(
  //     Uri.parse('https://result.keralalotteries.com/detailsofdrawweb.php'),
  //     body: {
  //       'lotterydet': selectedLotteryName,
  //     },
  //   );

  //   if (response.statusCode == 200) {
  //     final document = parse(response.body);
  //     // Parse the response using the web_scraper package
  //     final table = document.querySelectorAll('td');
  //     for (final td in table) {
  //       final tetext = td.text;
  //       print(tetext);
  //     }
      
  //     print(table.length);
  //   } else {
  //     // Handle the error
  //     print('Error: ${response.statusCode}');
  //   }
  // }

  // Future<String> fetchHTMLContent() async {
  //   final response = await http.get(
  //       Uri.parse('https://result.keralalotteries.com/detailsofdrawweb.php'));
  //   if (response.statusCode == 200) {
  //     return response.body;
  //   } else {
  //     throw Exception('Failed to load HTML');
  //   }
  // }

  @override
  void initState() {
    super.initState();
    // Call the parsing function when the app loads, for example.
    // parseHTML();
    // fetchDataForSelectedLottery();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Web Scraping Example'),
      ),
      body: const Center(
        child: Text('Web Scraping Example'),
      ),
    );
  }
}
