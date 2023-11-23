import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ra7alh/core/routers/app_routes.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/core/widgets/shimmer/shimmer_view.dart';
import 'package:ra7alh/core/widgets/show_snack.dart';
import 'package:ra7alh/core/widgets/tilte_text.dart';
import 'package:ra7alh/feature/home/presentation/cubit/home_cubit.dart';
import 'package:ra7alh/feature/home/presentation/cubit/home_state.dart';
import 'package:ra7alh/feature/home/presentation/widgets/options_list_view.dart';

class HistoricalPeriodsSection extends StatelessWidget {
  const HistoricalPeriodsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TilteText(AppStrings.historicalPeriods),
        BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state is HistoricalPeriodFailState) {
              showSnack(context,
                  contentType: ContentType.failure, message: state.errmsg);
            }
          },
          builder: (context, state) {
            HomeCubit cubit = HomeCubit.get(context);
            return state is HistoricalPeriodScccesState
                ? OptionsListView(
                    list: cubit.historicalPeriodDataList,
                    path: AppRoutes.historicalPeriodDetailsView,
                  )
                : const ShimmerView(numOfItem: 2);
          },
        )
      ],
    );
  }
}
