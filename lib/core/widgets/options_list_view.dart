import 'package:flutter/material.dart';
import 'package:ra7alh/core/widgets/option_item.dart';
import 'package:ra7alh/feature/home/data/models/wars_model.dart';

class OptionsListView extends StatelessWidget {
  const OptionsListView({
    super.key,
    required this.list,
    this.onTap,
  });

  final List<WarsModel> list;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: double.infinity,
        child: ListView.separated(
          clipBehavior: Clip.none,
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => OptionItem(
            onTap: () {
              onTap ?? ();
              debugPrint(list[index].name);
              // context.push(path, extra: list[index]);
            },
            title: list[index].name,
            img: list[index].image,
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 16),
        ));
  }
}
