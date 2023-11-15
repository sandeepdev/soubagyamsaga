import 'package:flutter/material.dart';
import 'package:lottery_results_app/const.dart';
import 'package:lottery_results_app/presentations/widgets/appbar.dart';

class TermsAndConditonsScreen extends StatelessWidget {
  const TermsAndConditonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 218, 221, 226),
      appBar: const CustomAppBar(title: 'Terms&Conditons'),
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
        child: Container(
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(15)),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Always cross check your tickets with the official results announced by the Kerala Government to confirm any possible winnings. We do not sell any lottery tickets.This app only displays lottery related data. ',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
