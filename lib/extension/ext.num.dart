import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

extension GapExtension on num {
  Gap get g => Gap(toDouble());
  SizedBox get h => SizedBox(height: toDouble());
  SizedBox get w => SizedBox(width: toDouble());
}
