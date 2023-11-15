import 'package:flutter/material.dart';
import 'package:lottery_results_app/const.dart';

import 'widgets/appbar.dart';

class HowToClaimScreen extends StatelessWidget {
  const HowToClaimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget customDivider = const Divider(
      thickness: 1,
      color: Color.fromARGB(255, 121, 119, 119),
    );
    TextStyle customTextStlye =
        const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 218, 221, 226),
      appBar: const CustomAppBar(
        title: 'How to Claim',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrizeAndDetailsWidget(
              height: 180,
              screenSize: screenSize,
              prize: 'Prize Above 1 Lakh',
              details:
                  'Kerala State Lottery winner should surrender winning ticket with necessary documents before the Director of State Lotteries or Nationalised, Scheduled banks within 30 days of draw.',
            ),
            PrizeAndDetailsWidget(
                height: 125,
                screenSize: screenSize,
                prize: 'Prize Between 5000 and 1 Lakh',
                details:
                    'Prize winner shall surrender the ticket within a month of draw before District Lottery Officer'),
            PrizeAndDetailsWidget(
                height: 100,
                screenSize: screenSize,
                prize: 'Prize less than 5000',
                details:
                    'Prize winner shall surrender the ticket within a month of draw before District Lottery Officer'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: primecolor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    width: screenSize.width - 30,
                    height: 25,
                    child: const Text(
                      'Documents Required',
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1.Claim Application',
                        style: customTextStlye,
                      ),
                      customDivider,
                      Text(
                        '2. Self attested photostat of ticket both side.',
                        style: customTextStlye,
                      ),
                      customDivider,
                      Text(
                        '3. Two Passport size photos winner attested by Gazetted Officer/Notary.',
                        style: customTextStlye,
                      ),
                      customDivider,
                      Text(
                        '4. A reciept for the prize money with revenue stamp.',
                        style: customTextStlye,
                      ),
                      customDivider,
                      Text(
                        '5. Self attested copy of the PAN card.',
                        style: customTextStlye,
                      ),
                      customDivider,
                      Text(
                        '6. Attested identity proof (Ration Card / Driving License/ Passport / Election ID Card)',
                        style: customTextStlye,
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PrizeAndDetailsWidget extends StatelessWidget {
  const PrizeAndDetailsWidget({
    super.key,
    required this.screenSize,
    required this.prize,
    required this.details,
    required this.height,
  });
  final String prize;
  final String details;

  final Size screenSize;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: primecolor),
            alignment: Alignment.center,
            width: (screenSize.width - 30) * 0.3,
            height: height,
            child: Text(
              prize,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: whiteColor, fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            width: (screenSize.width - 40) * 0.7,
            height: height,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                details,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
