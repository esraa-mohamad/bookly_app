import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
     this.borderRadius, required this.textButton,
    this.fontSize,
    this.onPressed
  });

  final Color backgroundColor;

  final Color textColor;

  final BorderRadius ? borderRadius;

  final String textButton ;

  final double ? fontSize ;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ConstantsSize.s48,
      child: TextButton(
        onPressed:onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(ConstantsSize.s16),
          ),
        ),
        child: Text(
          textButton,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w900,
            color: textColor,
            fontFamily: ConstantsStrings.numberFamily,
            fontSize: fontSize
          ),
        ),
      ),
    );
  }
}
