import 'package:flutter/material.dart';
import 'package:ra7alh/core/style/app_text_styles.dart';
import 'package:ra7alh/core/utils/app_assets.dart';
import 'package:ra7alh/core/widgets/custom_network_img.dart';

class DetailsBodySection extends StatelessWidget {
  const DetailsBodySection({
    super.key,
    required this.name,
    required this.description,
    required this.imgUrl,
  });
  final String name, description, imgUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('About $name',
                textAlign: TextAlign.center,
                style: AppTextStyles.font28PoppinsBlueBold),
            const SizedBox(width: 10),
            Image.asset(AppAssets.iconLifeKey,
                height: 55, width: 35, fit: BoxFit.fitWidth)
          ],
        ),
        const SizedBox(height: 30),
        DescriptionAndImageDetails(description: description, imgUrl: imgUrl)
      ],
    );
  }
}

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
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: SizedBox(
              width: 150,
              child: CustomNetWorkImg(
                imgUrl,
                raduisNum: 0,
                elevation: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
