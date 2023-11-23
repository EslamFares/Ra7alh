abstract class HomeState {}

final class HomeInitial extends HomeState {}

final class HistoricalPeriodLoadingState extends HomeState {}

final class HistoricalPeriodScccesState extends HomeState {}

final class HistoricalPeriodFailState extends HomeState {
  final String errmsg;
  HistoricalPeriodFailState(this.errmsg);
}

final class CharactersLoadingState extends HomeState {}

final class CharactersScccesState extends HomeState {}

final class CharactersFailState extends HomeState {
  final String errmsg;
  CharactersFailState(this.errmsg);
}

final class SouvenirsLoadingState extends HomeState {}

final class SouvenirsScccesState extends HomeState {}

final class SouvenirsFailState extends HomeState {
  final String errmsg;
  SouvenirsFailState(this.errmsg);
}

final class BooksLoadingState extends HomeState {}

final class BooksScccesState extends HomeState {}

final class BooksFailState extends HomeState {
  final String errmsg;
  BooksFailState(this.errmsg);
}
