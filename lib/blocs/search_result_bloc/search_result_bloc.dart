import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lottery_results_app/models/lottery_data_results_model/lottery_data_results_model.dart';

import '../../repositoris/lottery_results_repository.dart';

part 'search_result_event.dart';
part 'search_result_state.dart';
part 'search_result_bloc.freezed.dart';

class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  SearchResultBloc() : super(const Initial()) {
    String selectedDate = '';
    String enteredNumber = '';

    on<_DateSelected>((event, emit) {
      selectedDate = event.selectedDate;
      emit(DateIsSelected(event.selectedDate));
    });
    on<_NumberEntered>((event, emit) {
      final RegExp numberPattern = RegExp(r'^[A-Za-z]{2}\d{6}$');
      if (numberPattern.hasMatch(event.enteredNumber)) {
        enteredNumber = event.enteredNumber;
      } else {
        emit(const EnteredNumberIsNotValid());
      }
    });
    on<_CheckPressed>(
      (event, emit) async {
        emit(const SearchResultState.loading());
        final LotteryResult? selectdeResult =
            await LotteryResultsRepo().fetchSelectedLottery(selectedDate);

        final String? link = selectdeResult?.viewLink;

        if (link != null) {
          List<String> result = await LotteryResultsRepo()
              .fetchAndExtractTextFromPDF(link, enteredNumber);

          emit(ButtonPressed(
              selectedLotteryLink: link,
              date: selectdeResult!.date,
              lotteryName: selectdeResult.lotteryName,
              result: result));
        } else {
          // print('null received in bloc');
        }
      },
    );
  }
}
