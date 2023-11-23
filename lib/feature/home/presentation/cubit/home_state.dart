abstract class HomeState {}

final class HomeInitial extends HomeState {}

final class HistoricalPeriodLoadingState extends HomeState {}

final class HistoricalPeriodScccesState extends HomeState {}

final class HistoricalPeriodFailState extends HomeState {
  final String errmsg;
  HistoricalPeriodFailState(this.errmsg);
}
