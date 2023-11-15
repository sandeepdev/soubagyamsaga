part of 'lottery_result_bloc.dart';

@freezed
abstract class LotteryResultEvent with _$LotteryResultEvent {
  const factory LotteryResultEvent.resultLoaded() = resultLoaded;
  const factory LotteryResultEvent.updateResult(
      List<LotteryResult> updatedresult) = UpdateResult;
  const factory LotteryResultEvent.showSelecteResult(
      LotteryResult selectedLotteyResult) = ShowSelecteResult;
}
