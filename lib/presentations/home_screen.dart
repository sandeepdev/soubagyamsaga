import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery_results_app/blocs/app_navigation/app_navigation_bloc.dart';
import 'package:lottery_results_app/presentations/barcode_scanner_screen/barcode_scanner_screen.dart';
import 'package:lottery_results_app/presentations/lottery_results_screen.dart';
import 'package:lottery_results_app/presentations/predicton_screen.dart';
import 'package:lottery_results_app/presentations/search_screen.dart';
import 'package:lottery_results_app/presentations/widgets/appbar.dart';
import 'package:lottery_results_app/presentations/widgets/navbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(246, 218, 221, 226),
          appBar: CustomAppBar(
            title: state.maybeMap(
              home: (homestate) => homestate.currenttitle,
              search: (sercahstate) => sercahstate.currenttitle,
              prediction: (predictionstate) => predictionstate.currenttitle,
              orElse: () => 'Kerala Lottery Result',
            ),
          ),
          bottomNavigationBar: const CustomBottomNavBarWidget(),
          drawer: CustomVerticalDrawer(scaffoldKey: _scaffoldKey),
          body: state.maybeMap(
            home: (home) => const LotteryResutlsScreen(),
            search: (value) => const SearchScreen(),
            scan: (state) => BarcodeScannerScreen(barcode: state.barcode),
            prediction: (value) => const PredictionScreen(),
            orElse: () => const LotteryResutlsScreen(),
          ),
        );
      },
    ));
  }
}
