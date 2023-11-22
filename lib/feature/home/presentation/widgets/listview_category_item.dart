import 'package:flutter/material.dart';
import '../../../../core/style/app_text_styles.dart';
import '../../../../core/widgets/custom_network_img.dart';

class ListViewCategoryItem extends StatelessWidget {
  const ListViewCategoryItem(
      {super.key, this.onTap, required this.imgUrl, required this.text});
  final Function? onTap;
  final String imgUrl;
  final String text;
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
                      imgUrl,
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
                        text,
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
