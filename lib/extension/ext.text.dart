import 'package:flutter/material.dart';

extension TextExtension on String {
  Text text({
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    FontWeight? weight,
    Color? color,
    double? size,
  }) {
    return Text(
      this,
      key: key,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style:
          style ?? TextStyle(fontWeight: weight, fontSize: size, color: color),
    );
  }
}
