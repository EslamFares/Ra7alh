import 'package:flutter/material.dart';
import '../../../../core/style/app_text_styles.dart';
import '../../../../core/widgets/custom_network_img.dart';
import '../../data/models/historical_period_model.dart';

class OptionItem extends StatelessWidget {
  const OptionItem(
      {super.key, required this.historicalPeriodModel, this.onTap});
  final Function? onTap;
  final HistoricalPeriodModel historicalPeriodModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap ?? ();
      },
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 100,
          width: 190,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 70,
                child: Text(
                  historicalPeriodModel.name,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.font18PoppinsBuleDarkW500,
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                width: 85,
                height: 100,
                child: CustomNetWorkImg(
                  historicalPeriodModel.image,
                  aspectRatio: .73,
                  raduisNum: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
