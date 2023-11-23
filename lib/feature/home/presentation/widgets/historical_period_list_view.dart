import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_constants.dart';
import 'package:ra7alh/feature/home/data/models/historical_period_model.dart';
import '../../../../core/widgets/shimmer_shape.dart';
import 'option_item.dart';

class HistoricalPeriodListView extends StatelessWidget {
  const HistoricalPeriodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance
            .collection(AppConsts.collHistoricalPeriodsName)
            .get(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text("Something went wrong");
          }

          if (snapshot.hasData && !snapshot.data!.docs[0].exists) {
            return const Text("Document does not exist");
          }

          if (snapshot.connectionState == ConnectionState.done) {
            List<HistoricalPeriodModel> historicalPeriodListData = [];
            for (var element in snapshot.data!.docs) {
              historicalPeriodListData
                  .add(HistoricalPeriodModel.fromJson(element));
            }
            debugPrint('======> ${historicalPeriodListData.length}');
            return SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.separated(
                  clipBehavior: Clip.none,
                  itemCount: snapshot.data!.docs.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => OptionItem(
                      historicalPeriodModel: historicalPeriodListData[index]),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                ));
          }
          return const Row(
            children: [
              ShimmerShape(),
              ShimmerShape(),
            ],
          );
        });
  }
}
