import 'package:flutter/material.dart';
import 'package:flutter_basic/theme/color_constant.dart';
import 'package:flutter_basic/theme/text_system.dart';

extension ThemeContext on BuildContext {
  CustomColors get themeColors =>
      Theme.of(this).extension<CustomColors>() ?? CustomColors.light;
  CustomColors get colors => themeColors;

  TextSystem get textSystem => TextSystem.defaultSystem;
  TextSystem get text => textSystem;
}
