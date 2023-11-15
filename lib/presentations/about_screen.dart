import 'package:flutter/material.dart';
import 'package:lottery_results_app/presentations/widgets/appbar.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 218, 221, 226),
      appBar: const CustomAppBar(
        title: 'About',
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 52, left: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          padding: const EdgeInsets.all(15),
          child: const Text(
            'Kerala Lottery Results is more than just an app; it\'s a dedicated companion for Kerala Lottery enthusiasts who desire to receive daily results right on their smartphones. Our application functions as a trustworthy source of lottery-related news and updates. It\'s important to emphasize that we neither sell nor collect any data or lottery tickets within the app. We\'re committed to providing you with real-time updates directly from the Kerala Lottery Department, making us the fastest lottery result publisher in the industry. You can count on us to deliver the results even before any other app can get them to you.',
            style: TextStyle(fontSize: 19),
          ),
        ),
      ),
    );
  }
}
