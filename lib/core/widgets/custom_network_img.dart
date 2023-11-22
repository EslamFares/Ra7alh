import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ra7alh/core/utils/app_colors.dart';

class CustomNetWorkImg extends StatelessWidget {
  const CustomNetWorkImg(this.imgUrl,
      {super.key, this.aspectRatio, this.raduisNum, this.customRaduis});
  final String imgUrl;
  final double? aspectRatio;
  final double? raduisNum;
  final BorderRadius? customRaduis;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio ?? .65,
      child: Material(
        color:
            // MediaQuery.of(context).platformBrightness == Brightness.dark?
            AppColors.white,
        borderRadius: customRaduis ?? BorderRadius.circular(raduisNum ?? 14),
        elevation: 3,
        child: ClipRRect(
          borderRadius: customRaduis ?? BorderRadius.circular(raduisNum ?? 14),
          child: CachedNetworkImage(
            imageUrl: imgUrl,
            fit: BoxFit.cover,
            placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(color: Colors.white)),
            errorWidget: (context, url, error) =>
                const Icon(FontAwesomeIcons.image),
          ),
        ),
      ),
    );
  }
}
