import 'package:flutter/material.dart';
import 'package:lottery_results_app/presentations/widgets/appbar.dart';

class SheduleScreen extends StatelessWidget {
  const SheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromARGB(246, 218, 221, 226),
        appBar: const CustomAppBar(title: 'Shedule'),
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 44),
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              width: screenSize.width - 30,
              child: const Text(
                'Kerala State Lottories Department has 7 weekly lottories and 6 bumper lottories. Here is the list.',
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 44,
            ),
          ]),
        ));
  }
}
