import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lottery_results_app/models/lottery_data_results_model/lottery_data_results_model.dart';

import '../../repositoris/lottery_results_repository.dart';
part 'lottery_result_event.dart';
part 'lottery_result_state.dart';
part 'lottery_result_bloc.freezed.dart';

class LotteryResultBloc extends Bloc<LotteryResultEvent, LotteryResultState> {
  final LotteryResultsRepo repo;
  LotteryResultBloc({required this.repo}) : super(const LoadingState()) {
    on<resultLoaded>((event, emit) async {
      emit(const LoadingState());
      try {
        final List<LotteryResult> results = await repo.fetchLotteryResults();
        emit(LoadedState(results));
      } catch (e) {
        emit(ErrorState('failed to load data:$e'));
      }
    });
    // on<ShowSelecteResult>((event, emit) async {
    //   String? url = event.selectedLotteyResult.viewLink;
    //   if (url != null) {
    //     final String? selectedLotteryResultText =
    //         await LotteryResultsRepo().fetchSelectedLottetyData(url);
    //     final Map<String, List<String>> extractedResultsAsMap =
    //         LotteryResultsRepo()
    //             .extractLotteryResults(selectedLotteryResultText!);

    //     emit(SelectedLotteryResult(extractedResultsAsMap));
    //   }
    // }
    // );
    // on<UpdateResult>((event, emit) {if
    //   final currentState = state;
    //   if (currentState is LoadedState
    //   ) { emit(LoadedState([...currentState.results, ...event.updatedresult]));

    //   } else {
    //     emit(ErrorState('Cannot update results. Invalid current state.'));
    //   }
    // });
    // on<LotteryResultEvent>((event, emit) async {
    //   if (event is resultLoaded) {
    //     print('inside event');
    //     emit(LoadingState());
    //     try {
    //       print('inside try');
    //       final List<LotteryResult> results = await repo.fetchLotteryResults();
    //       print('data fetched succsfullt${results.length}');
    //       emit(LoadedState(results));
    //     } catch (e) {
    //       emit(ErrorState('Failed to load data: $e'));
    //     }
    //   } else if (event is UpdateResult) {
    //     final currentState = state;
    //     if (currentState is LoadedState) {
    //       emit(LoadedState([...currentState.results, ...event.updatedresult]));
    //     } else {
    //       emit(ErrorState('Cannot update results. Invalid current state.'));
    //     }
    //   }

    // });
    // @override
    // Stream<LotteryResultState> mapEventToState(
    //     LotteryResultEvent event) async* {
    //   if (event is resultLoaded) {
    //     yield LoadingState();
    //     try {
    //       final results = await repo.fetchLotteryResults();
    //       yield LoadedState(results);
    //     } catch (e) {
    //       yield ErrorState('Failed to load results: $e');
    //     }
    //   } else if (event is UpdateResult) {
    //     final currentState = state;
    //     if (currentState is LoadedState) {
    //       yield LoadedState([...currentState.results, ...event.updatedresult]);
    //     } else {
    //       yield ErrorState('Cannot update results. Invalid current state.');
    //     }
    //   }
    // }
    
  }
  
}
