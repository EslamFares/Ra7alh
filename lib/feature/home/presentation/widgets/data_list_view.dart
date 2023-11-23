import 'package:flutter/material.dart';
import 'package:ra7alh/core/models/data_stander_model.dart';
import 'package:ra7alh/feature/home/presentation/widgets/data_list_view_item.dart';

class DataListView extends StatelessWidget {
  const DataListView({super.key, required this.dataList});
  final List<DataStanderModel> dataList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
          //? list view remove shadow of Material ... Clip.none => don't remove any thing og item
          clipBehavior: Clip.none,
          itemCount: dataList.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 16),
          itemBuilder: (context, index) => DataListViewItem(dataList[index])),
    );
  }
}
