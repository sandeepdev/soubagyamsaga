import 'package:flutter/material.dart';
import 'package:lottery_results_app/models/lottery_data_results_model/lottery_data_results_model.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.result});
  final LotteryResult result;

  @override
  Widget build(BuildContext context) {
    return Text(result.date);
  }
}
