import 'package:flutter/material.dart';
import 'package:lottery_results_app/const.dart';

class PredictionScreen extends StatelessWidget {
  const PredictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 200, right: 20, left: 30),
      child: Text(
        'This Screen is not ready yet.we are working on it.',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w700, color: primecolor),
      ),
    );
  }
}
