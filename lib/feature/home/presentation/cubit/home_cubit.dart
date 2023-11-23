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

  Future<void> getWarsList(
      QueryDocumentSnapshot<Map<String, dynamic>> element) async {
    await FirebaseFirestore.instance
        .collection(AppConsts.collHistoricalPeriodsName)
        .doc(element.id)
        .collection(AppConsts.collWarsName)
        .get()
        .then((value) => value.docs.forEach((element) {
              warsDataList.add(WarsModel.fromJson(element.data()));
            }));
  }
}
