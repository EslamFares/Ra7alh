import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ra7alh/core/widgets/show_snack.dart';
import 'package:ra7alh/feature/home/presentation/cubit/home_cubit.dart';
import '../../../../core/widgets/shimmer_shape.dart';
import '../cubit/home_state.dart';
import 'option_item.dart';

class HistoricalPeriodListView extends StatelessWidget {
  const HistoricalPeriodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HistoricalPeriodFailState) {
          showSnack(context,
              contentType: ContentType.failure, message: state.errmsg);
        }
      },
      builder: (context, state) {
        HomeCubit cubit = HomeCubit.get(context);
        return state is HistoricalPeriodScccesState
            ? SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.separated(
                  clipBehavior: Clip.none,
                  itemCount: cubit.historicalPeriodDataList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => OptionItem(
                      historicalPeriodModel:
                          cubit.historicalPeriodDataList[index]),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 16),
                ))
            : const Row(
                children: [
                  ShimmerShape(),
                  ShimmerShape(),
                ],
              );
      },
    );
  }
}
