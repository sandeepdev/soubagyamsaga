part of 'lottery_result_bloc.dart';

@freezed
abstract class LotteryResultState with _$LotteryResultState {
  const factory LotteryResultState.loading() = LoadingState;

  const factory LotteryResultState.loaded(List<LotteryResult> results) =
      LoadedState;

  const factory LotteryResultState.error(String error) = ErrorState;
  // const factory LotteryResultState.selectedLotteryResult( Map<String, List<String>> lotteryResultMap) =
  //     SelectedLotteryResult;
}
