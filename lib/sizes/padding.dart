import 'package:flutter/material.dart';

class GlobalPadding extends StatelessWidget {
  final bool? hideLeft;
  final bool? hideRight;
  final bool? hideTop;
  final bool? hideBottom;
  final Widget child;
  const GlobalPadding(
      {super.key,
      this.hideBottom = false,
      this.hideLeft = false,
      this.hideRight = false,
      this.hideTop = false,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: hideLeft == true ? 0 : 20,
          top: hideTop == true ? 0 : 20,
          right: hideRight == true ? 0 : 20,
          bottom: hideBottom == true ? 0 : 20),
      child: child,
    );
  }
}
