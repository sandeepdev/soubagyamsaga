import 'package:flutter/material.dart';
import 'package:lottery_results_app/presentations/about_screen.dart';
import 'package:lottery_results_app/presentations/how_to_claim_screen.dart';
import 'package:lottery_results_app/presentations/terms_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;

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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class CustomVerticalDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey; // Receive the scaffoldKey
  const CustomVerticalDrawer({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: scaffoldKey,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share'),
            onTap: () {
              // Handle the Home option
              Navigator.pop(context); // Close the drawer
              //  Share.share('link not availble');
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.feedback),
          //   title: const Text('Feedback'),
          //   onTap: () {
          //     // Handle the Home option
          //     Navigator.pop(context); // Close the drawer
          //   },
          // ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              // Navigator.pop(context); // Close the drawer
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutScreen(),
                  ));
              // Handle the Home option
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.schedule),
          //   title: const Text('Shedule'),
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => const SheduleScreen(),
          //         ));
          //   },
          // ),
          ListTile(
            leading: const Icon(Icons.card_giftcard),
            title: const Text('How to Claim'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HowToClaimScreen(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Terms And Conditions'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TermsAndConditonsScreen(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.close),
            title: const Text('close'),
            onTap: () {
              // Handle the Home option
              Navigator.pop(context); // Close the drawer
            },
          ),
          // ... Additional menu items
        ],
      ),
    );
  }
}
