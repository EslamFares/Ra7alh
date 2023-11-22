import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView(
      {super.key, required this.item, required this.itemCount});
  final Widget item;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
          //? list view remove shadow of Material ... Clip.none => don't remove any thing og item
          clipBehavior: Clip.none,
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 16),
          itemBuilder: (context, index) => item),
    );
  }
}
