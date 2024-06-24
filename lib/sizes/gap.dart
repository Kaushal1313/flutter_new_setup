import 'package:flutter/material.dart';

enum Sizes{
  small,medium,large
}

class HeighGap extends StatelessWidget {
    final Sizes? varient;
      final double? height;


  const HeighGap({super.key, this.varient, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height??
      (varient==Sizes.large?30:varient==Sizes.small?4:20),
    );
  }
}

class WidthGap extends StatelessWidget {
  final Sizes? varient;
  const WidthGap({
    super.key,
    this.width,
    this.varient = Sizes.medium,
  });

  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ??
          (varient == Sizes.large
              ? 20
              : varient == Sizes.small
                  ? 10
                  : 14),
    );
  }
}
