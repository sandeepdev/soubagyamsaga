part of 'app_navigation_bloc.dart';

@freezed
class AppNavigationEvent with _$AppNavigationEvent {
  const factory AppNavigationEvent.started() = _Started;
  const factory AppNavigationEvent.navigateToHome() = _NavigateToHome;
  const factory AppNavigationEvent.navigateToSearch() = _NavigateToSearch;
  const factory AppNavigationEvent.navigateToScan(BuildContext context) = _NavigateToScan;
  const factory AppNavigationEvent.navigateToPrediction() = _NavigateToPrediction;
}
