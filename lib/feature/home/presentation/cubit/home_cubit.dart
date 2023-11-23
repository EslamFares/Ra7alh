import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_constants.dart';
import '../../data/models/historical_period_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  //======================
  List<HistoricalPeriodModel> historicalPeriodDataList = [];
  Future<void> getHistoricalPeriodData() async {
    try {
      emit(HistoricalPeriodLoadingState());
      await FirebaseFirestore.instance
          .collection(AppConsts.collHistoricalPeriodsName)
          .get()
          // ignore: avoid_function_literals_in_foreach_calls
          .then((value) => value.docs.forEach((element) {
                historicalPeriodDataList
                    .add(HistoricalPeriodModel.fromJson(element.data()));
              }));
      emit(HistoricalPeriodScccesState());
    } on Exception catch (e) {
      emit(HistoricalPeriodFailState(e.toString()));
    }
  }
}
