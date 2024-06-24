import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class RectangleShimmer extends StatelessWidget {
  final double width;
  final double height;
  const RectangleShimmer(
      {super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Shimmer.fromColors(
      baseColor: theme.disabledColor,
      highlightColor: theme.disabledColor.withOpacity(0.4),
      child: Container(
        width: width,
        height: height,
        color: theme.disabledColor,
      ),
    );
  }
}
