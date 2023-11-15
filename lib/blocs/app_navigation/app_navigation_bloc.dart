import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lottery_results_app/presentations/barcode_scanner_screen/barcode_scanner_screen.dart';

part 'app_navigation_event.dart';
part 'app_navigation_state.dart';
part 'app_navigation_bloc.freezed.dart';

class AppNavigationBloc extends Bloc<AppNavigationEvent, AppNavigationState> {
  AppNavigationBloc()
      : super(const _Home(currenttitle: 'Kerala Lottery Result')) {
    on<_NavigateToHome>((event, emit) {
      emit(
          const AppNavigationState.home(currenttitle: 'Kerala Lottery Result'));
    });
    on<_NavigateToSearch>((event, emit) {
      emit(const AppNavigationState.search(currenttitle: 'Search'));
    });
    on<_NavigateToScan>((event, emit) async {
      String? barcode = await startBarcodeScanning(event.context);

      emit(AppNavigationState.scan(barcode: barcode));
    });
    on<_NavigateToPrediction>((event, emit) {
      emit(const AppNavigationState.prediction(currenttitle: 'Prediction'));
    });
    // on<AppNavigationEvent>((event, emit) {
    //   switch (event) {
    //     case AppNavigationEvent.navigateToHome:
    //       emit(const AppNavigationState.home(currenttitle: 'homebloc'));
    //       break;
    //     case AppNavigationEvent.navigateToSearch:
    //       emit(const AppNavigationState.search(currenttitle: 'Searchbloc'));
    //       break;
    //     case AppNavigationEvent.navigateToScan:
    //       emit(const AppNavigationState.scan(currenttitle: 'Scanbloc'));
    //     case AppNavigationEvent.navigateToPrediction:
    //       emit(const AppNavigationState.prediction(
    //           currenttitle: 'Predictionbloc'));
    //       break;
    //     default:
    //       AppNavigationEvent.navigateToHome;
    //       emit(const AppNavigationState.home(currenttitle: 'Homebloc'));
    //       break;
    //   }
    // }
    // );
  }
}
