part of 'app_navigation_bloc.dart';

@freezed
class AppNavigationState with _$AppNavigationState {
  const factory AppNavigationState.initial() = _Initial;
  const factory AppNavigationState.home({required String currenttitle}) = _Home;
  const factory AppNavigationState.search({required String currenttitle}) =
      _Search;
  const factory AppNavigationState.scan({required String? barcode}) = _Scan;
  const factory AppNavigationState.prediction({required String currenttitle}) =
      _prediction;
}
