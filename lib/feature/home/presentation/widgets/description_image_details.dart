import 'package:flutter/material.dart';
import 'package:ra7alh/core/style/app_text_styles.dart';
import 'package:ra7alh/core/utils/app_assets.dart';
import 'package:ra7alh/core/widgets/custom_network_img.dart';

class DescriptionAndImageDetails extends StatelessWidget {
  const DescriptionAndImageDetails({
    super.key,
    required this.description,
    required this.imgUrl,
  });

  final String description;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                    top: -1,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 160,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                AppAssets.iconPyramidsDetails,
                              ),
                              fit: BoxFit.fill)),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 30),
                  child: Expanded(
                      child: SingleChildScrollView(
                    child: Text(
                      description,
                      style: AppTextStyles.font18PoppinsBlackBold,
                    ),
                  )),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                child: CustomNetWorkImg(
                  imgUrl,
                  raduisNum: 0,
                  elevation: 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
