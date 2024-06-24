import 'package:carzup_logic/text/AppText.dart';
import 'package:carzup_logic/text/textTypes.dart';
import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final TextColorVariant colorVariant;
  const BodyText(
      {super.key,
      required this.text,
      this.color,
      this.fontSize = 12,
      this.fontWeight = FontWeight.w400,
      this.overflow,
      this.colorVariant = TextColorVariant.primary,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return AppText(
      text: text,
      color: getTextColor(theme, colorVariant, color: color),
      fontSize: fontSize,
      fontWeight: fontWeight,
      overflow: overflow,
      textAlign: textAlign,
    );
  }
}
