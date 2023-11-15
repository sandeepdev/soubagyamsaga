part of 'search_result_bloc.dart';

@freezed
abstract class SearchResultState with _$SearchResultState {
  const factory SearchResultState.enteredNumberIsNotValid() =
      EnteredNumberIsNotValid;
  const factory SearchResultState.dateIsSelected(String date) = DateIsSelected;
  const factory SearchResultState.buttonPressed(
  {List<String>? result,
  required String selectedLotteryLink,
  required String date,
  required String lotteryName}
  ) = ButtonPressed;
  const factory SearchResultState.initial() = Initial;
  const factory SearchResultState.loading() = Loading;
}
