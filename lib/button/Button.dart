import 'package:carzup_logic/button/buttonTypes.dart';
import 'package:carzup_logic/text/AppText.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final IconData? icon;
  final ButtonFillVariant buttonFillVariant;
  final bool isLoading;
  final String loadingText;
  final bool disabled;
  final double height;
  const AppButton(
      {super.key,
      required this.onPressed,
      required this.buttonText,
      this.icon,
      this.buttonFillVariant = ButtonFillVariant.fill,
      this.isLoading = false,
      this.disabled = false,
      this.loadingText = 'In Progress',
      this.height = 50});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: buttonFillVariant == ButtonFillVariant.fill
            ? LinearGradient(
                colors: disabled
                    ? [theme.disabledColor, theme.disabledColor]
                    : [
                        Color.fromARGB(255, 242, 7, 101),
                        Color.fromARGB(255, 38, 56, 74)
                      ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            : null,
        border: buttonFillVariant == ButtonFillVariant.bordered
            ? Border.all(
                color:
                    disabled ? theme.disabledColor : theme.colorScheme.primary,
                width: 2,
              )
            : null,
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: isLoading || disabled ? null : onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isLoading
                ? SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: buttonFillVariant == ButtonFillVariant.fill
                          ? theme.colorScheme.onPrimary
                          : theme.colorScheme.primary,
                    ),
                  )
                : icon != null
                    ? Icon(
                        icon,
                        size: 20,
                        color: buttonFillVariant == ButtonFillVariant.fill
                            ? theme.colorScheme.onPrimary
                            : disabled
                                ? theme.disabledColor
                                : theme.colorScheme.primary,
                      )
                    : const SizedBox(),
            SizedBox(width: icon != null || isLoading ? 10 : 0),
            AppText(
                text: isLoading ? loadingText : buttonText,
                color: buttonFillVariant == ButtonFillVariant.fill
                    ? theme.colorScheme.onPrimary
                    : disabled
                        ? theme.disabledColor
                        : theme.colorScheme.primary,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ],
        ),
      ),
    );
  }
}
