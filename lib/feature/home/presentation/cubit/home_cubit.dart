// ignore_for_file: avoid_function_literals_in_foreach_calls
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ra7alh/feature/home/data/models/wars_model.dart';
import '../../../../core/utils/app_constants.dart';
import '../../data/models/historical_period_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  //======================
  List<HistoricalPeriodModel> historicalPeriodDataList = [];
  List<WarsModel> warsDataList = [];
  List<WarsModel> charactersDataList = [];
  List<WarsModel> souvenirsDataList = [];
  List<WarsModel> booksDataList = [];
  Future<void> getHistoricalPeriodData() async {
    try {
      emit(HistoricalPeriodLoadingState());
      await FirebaseFirestore.instance
          .collection(AppConsts.collHistoricalPeriodsName)
          .get()
          .then((value) => value.docs.forEach((element) async {
                await getWarsList(element);
                historicalPeriodDataList.add(HistoricalPeriodModel.fromJson(
                    element.data(), warsDataList));
                emit(HistoricalPeriodScccesState());
              }));
    } on Exception catch (e) {
      emit(HistoricalPeriodFailState(e.toString()));
    }
  }

  Future<void> getHistoricalCharactersData() async {
    try {
      emit(CharactersLoadingState());
      await FirebaseFirestore.instance
          .collection(AppConsts.collHistoricalCharactersName)
          .get()
          .then((value) => value.docs.forEach((element) async {
                charactersDataList.add(WarsModel.fromJson(
                  element.data(),
                ));
              }));
      emit(CharactersScccesState());
    } on Exception catch (e) {
      emit(CharactersFailState(e.toString()));
    }
  }

  Future<void> getHistoricalSouvenirsData() async {
    try {
      emit(SouvenirsLoadingState());
      await FirebaseFirestore.instance
          .collection(AppConsts.collSouvenirsCharactersName)
          .get()
          .then((value) => value.docs.forEach((element) async {
                souvenirsDataList.add(WarsModel.fromJson(
                  element.data(),
                ));
                emit(SouvenirsScccesState());
              }));
    } on Exception catch (e) {
      emit(SouvenirsFailState(e.toString()));
    }
  }

  Future<void> getHistoricalBooksData() async {
    try {
      emit(BooksLoadingState());
      await FirebaseFirestore.instance
          .collection(AppConsts.collHistoryBooksName)
          .get()
          .then((value) => value.docs.forEach((element) async {
                booksDataList.add(WarsModel.fromJson(
                  element.data(),
                ));
                emit(BooksScccesState());
              }));
    } on Exception catch (e) {
      emit(BooksFailState(e.toString()));
    }
  }

  Future<void> getWarsList(
      QueryDocumentSnapshot<Map<String, dynamic>> element) async {
    // warsDataList.clear();
    // print('=============> start length ${warsDataList.length}');
    // print('=============> collection name ${element.data()['name']}');
    await FirebaseFirestore.instance
        .collection(AppConsts.collHistoricalPeriodsName)
        .doc(element.id)
        .collection(AppConsts.collWarsName)
        .get()
        .then((value) => value.docs.forEach((element) {
              // print('===>>>>>>>war name ${element.data()['name']}');
              warsDataList.add(WarsModel.fromJson(element.data()));
            }));

    // print('=============> end length ${warsDataList.length}');
    // print('=============> collection name  ${element.data()['name']}');
  }
}
