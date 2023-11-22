import 'package:flutter/material.dart';
import '../../../../core/style/app_text_styles.dart';
import '../../../../core/widgets/custom_network_img.dart';

class OptionItem extends StatelessWidget {
  const OptionItem(
      {super.key, required this.txt, required this.imgurl, this.onTap});
  final String txt, imgurl;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onTap ?? ();
        },
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.all(16),
            height: 120,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    txt,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.font18PoppinsBuleDarkW500,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: CustomNetWorkImg(
                  imgurl,
                  aspectRatio: .73,
                  raduisNum: 8,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
