import 'package:flutter/material.dart';
import 'package:ra7alh/core/models/data_stander_model.dart';
import '../../../../core/style/app_text_styles.dart';
import '../../../../core/widgets/custom_network_img.dart';

class DataListViewItem extends StatelessWidget {
  const DataListViewItem(this.dataModel, {super.key, this.onTap});
  final Function? onTap;
  final DataStanderModel dataModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap ?? ();
      },
      child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            height: 220,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
                    height: 155,
                    child: CustomNetWorkImg(
                      dataModel.image,
                      customRaduis: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      aspectRatio: 200 / 120,
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 65,
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                      child: Text(
                        dataModel.name,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.font18PoppinsBuleDarkW500,
                      ),
                    ),
                  ),
                ]),
          )),
    );
  }
}
