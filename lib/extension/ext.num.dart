import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

extension GapExtension on num {
  Gap get g => Gap(toDouble());
  SizedBox get h => SizedBox(height: toDouble());
  SizedBox get w => SizedBox(width: toDouble());
}

extension SliverGapExtension on num {
  SliverGap get sg => SliverGap(toDouble());
}

extension SliverPaddingExtension on num {
  SliverPadding sliverPad({
    required Widget sliver,
    double? horizontal,
    double? vertical,
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    final double value = toDouble();

    final EdgeInsets padding;

    if (horizontal != null || vertical != null) {
      padding = EdgeInsets.symmetric(
        horizontal: horizontal ?? 0,
        vertical: vertical ?? 0,
      );
    } else if (top != null || bottom != null || left != null || right != null) {
      padding = EdgeInsets.only(
        top: top ?? 0,
        bottom: bottom ?? 0,
        left: left ?? 0,
        right: right ?? 0,
      );
    } else {
      padding = EdgeInsets.all(value); // ✅ 기본값
    }

    return SliverPadding(padding: padding, sliver: sliver);
  }
}

extension PaddingExtension on num {
  Padding pad({
    required Widget child,
    double? horizontal,
    double? vertical,
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    EdgeInsets padding;

    if (horizontal != null || vertical != null) {
      padding = EdgeInsets.symmetric(
        horizontal: horizontal ?? 0,
        vertical: vertical ?? 0,
      );
    } else if (top != null || bottom != null || left != null || right != null) {
      padding = EdgeInsets.only(
        top: top ?? 0,
        bottom: bottom ?? 0,
        left: left ?? 0,
        right: right ?? 0,
      );
    } else {
      padding = EdgeInsets.all(toDouble());
    }

    return Padding(padding: padding, child: child);
  }
}
