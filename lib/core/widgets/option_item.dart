import 'package:flutter/material.dart';
import '../style/app_text_styles.dart';
import 'custom_network_img.dart';

class OptionItem extends StatelessWidget {
  const OptionItem(
      {super.key, required this.title, required this.img, this.onTap});
  final Function? onTap;
  final String title, img;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
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
                  title,
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
                  img,
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
