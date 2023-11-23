import 'package:flutter/material.dart';
import 'package:ra7alh/core/widgets/shimmer/shimmer_shape.dart';

class ShimmerView extends StatelessWidget {
  const ShimmerView({
    super.key,
    this.numOfItem,
    this.width,
    this.height,
  });
  final int? numOfItem;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List<Widget>.generate(
            numOfItem ?? 3,
            (index) => CustomShimmerShape(
                  height: height,
                  width: width,
                )));
  }
}
