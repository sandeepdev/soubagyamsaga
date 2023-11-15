import 'package:freezed_annotation/freezed_annotation.dart';
part 'lottery_data_results_model.freezed.dart';
part 'lottery_data_results_model.g.dart';
@freezed
abstract class LotteryResult with _$LotteryResult {
  factory LotteryResult({
    required String lotteryName,
    required String date,
    required String? viewLink,
  }) = _LotteryResult;

  factory LotteryResult.fromJson(Map<String, dynamic> json) =>
      _$LotteryResultFromJson(json);
}
