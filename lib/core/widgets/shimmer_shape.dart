import 'package:flutter/material.dart';
import 'package:ra7alh/core/utils/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerShape extends StatelessWidget {
  const ShimmerShape({
    super.key,
    this.width,
    this.height,
  });
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Shimmer.fromColors(
              baseColor: AppColors.white,
              highlightColor: AppColors.grayLight,
              child: Container(
                width: width ?? 190,
                height: height ?? 100,
                color: AppColors.blueLight,
              )),
        ),
      ),
    );
  }
}
