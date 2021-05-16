import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final int maxLines;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final Color textColor;
  final FontStyle fontStyle;
  final FontWeight fontWeight;
  final TextOverflow textOverflow;

  CustomText({
    this.text,
    this.fontSize,
    this.fontStyle,
    this.fontWeight,
    this.maxLines,
    this.textAlign,
    this.textColor,
    this.textDirection,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: textDirection,
      textAlign: textAlign,
      overflow: textOverflow == null ? TextOverflow.ellipsis : textOverflow,
      maxLines: maxLines,
      softWrap: false,
      style: TextStyle(
        color: textColor == null ? Colors.white : textColor,
        fontFamily: 'Quicksand',
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight == null ? FontWeight.w400 : fontWeight,
      ),
    );
  }
}
