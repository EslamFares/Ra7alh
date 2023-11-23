import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ra7alh/core/utils/app_strings.dart';
import 'package:ra7alh/core/widgets/tilte_text.dart';
import 'package:ra7alh/feature/home/presentation/cubit/home_cubit.dart';
import 'package:ra7alh/feature/home/presentation/widgets/data_list_view.dart';
import '../../../../../core/widgets/shimmer/shimmer_view.dart';
import '../../../../../core/widgets/show_snack.dart';
import '../../cubit/home_state.dart';

class HistoricalCharactersSection extends StatelessWidget {
  const HistoricalCharactersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TilteText(AppStrings.historicalCharacters),
        BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state is CharactersFailState) {
              showSnack(context,
                  contentType: ContentType.failure, message: state.errmsg);
            }
          },
          builder: (context, state) {
            HomeCubit cubit = HomeCubit.get(context);
            return state is CharactersLoadingState
                ? const ShimmerView(height: 220)
                : DataListView(dataList: cubit.charactersDataList);
          },
        )
      ],
    );
  }
}
