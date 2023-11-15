part of 'search_result_bloc.dart';

@freezed
class SearchResultEvent with _$SearchResultEvent {
  const factory SearchResultEvent.dateSelected(String selectedDate) =_DateSelected;
  const factory SearchResultEvent.numberEntered(String enteredNumber) = _NumberEntered;
  const factory SearchResultEvent.checkPressed() = _CheckPressed;
}
