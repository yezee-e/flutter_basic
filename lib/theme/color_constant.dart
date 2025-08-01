import 'package:flutter/material.dart';

//사용법
//ColorConstant.neutral.n100

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.neutral,
    required this.primary,
    required this.secondary,
    required this.information,
    required this.warning,
  });

  final NeutralColors neutral;
  final PrimaryColors primary;
  final SecondaryColors secondary;
  final InformationColors information;
  final WarningColors warning;

  @override
  CustomColors copyWith({
    NeutralColors? neutral,
    PrimaryColors? primary,
    SecondaryColors? secondary,
    InformationColors? information,
    WarningColors? warning,
  }) {
    return CustomColors(
      neutral: neutral ?? this.neutral,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      information: information ?? this.information,
      warning: warning ?? this.warning,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(
      neutral: neutral,
      primary: primary,
      secondary: secondary,
      information: information,
      warning: warning,
    );
  }

  static const light = CustomColors(
    neutral: NeutralColors(
      n100: Color(0xFF0B0A0A),
      n80: Color(0xFF6C6B6B),
      n60: Color(0xFFBDBBB4),
      n40: Color(0xFFDFDCD6),
      n10: Color(0xFFF3F2F0),
      n0: Color(0xFFFFFFFF),
    ),
    primary: PrimaryColors(
      p100: Color(0xFF72481F),
      p80: Color(0xFFAA7A59),
      p60: Color(0xFFCC936A),
      p40: Color(0xFFE0AA85),
      p20: Color(0xFFe3cab9),
      p10: Color(0xFFFCF5F0),
    ),
    secondary: SecondaryColors(
      y100: Color(0xFFE58525),
      y80: Color(0xFFEFA14B),
      y60: Color(0xFFFFB869),
      y40: Color(0xFFFFCB92),
      y20: Color(0xFFFEE1C1),
      y10: Color(0xFFFFF4E9),
    ),
    information: InformationColors(
      b100: Color(0xFF3A6F9B),
      b80: Color(0xFF518ABA),
      b60: Color(0xFF5C9BCF),
      b40: Color(0xFF7EB3DF),
      b20: Color(0xFFBCDAF1),
      b10: Color(0xFFE9F3FB),
    ),
    warning: WarningColors(
      o100: Color(0xFFE35328),
      o80: Color(0xFFFD7044),
      o60: Color(0xFFFF8A66),
      o40: Color(0xFFFF8A66),
      o20: Color(0xFFFDC4B3),
      o10: Color(0xFFFFECE7),
    ),
  );

  static const dark = CustomColors(
    neutral: NeutralColors(
      n100: Color(0xFFFFFFFF),
      n80: Color(0xFFDFDCD6),
      n60: Color(0xFFBDBBB4),
      n40: Color(0xFF6C6B6B),
      n10: Color(0xFF2C2C2C),
      n0: Color(0xFF0B0A0A),
    ),
    primary: PrimaryColors(
      p100: Color(0xFFE0AA85),
      p80: Color(0xFFCC936A),
      p60: Color(0xFFAA7A59),
      p40: Color(0xFF72481F),
      p20: Color(0xFF523517),
      p10: Color(0xFF3A2610),
    ),
    secondary: SecondaryColors(
      y100: Color(0xFFFFCB92),
      y80: Color(0xFFFFB869),
      y60: Color(0xFFEFA14B),
      y40: Color(0xFFE58525),
      y20: Color(0xFFA65F1B),
      y10: Color(0xFF734215),
    ),
    information: InformationColors(
      b100: Color(0xFF7EB3DF),
      b80: Color(0xFF5C9BCF),
      b60: Color(0xFF518ABA),
      b40: Color(0xFF3A6F9B),
      b20: Color(0xFF2A5171),
      b10: Color(0xFF1D384E),
    ),
    warning: WarningColors(
      o100: Color(0xFFFF8A66),
      o80: Color(0xFFFD7044),
      o60: Color(0xFFE35328),
      o40: Color(0xFFC43918),
      o20: Color(0xFF8F2A11),
      o10: Color(0xFF661E0C),
    ),
  );
}

@immutable
class NeutralColors {
  const NeutralColors({
    required this.n100,
    required this.n80,
    required this.n60,
    required this.n40,
    required this.n10,
    required this.n0,
  });

  final Color n100;
  final Color n80;
  final Color n60;
  final Color n40;
  final Color n10;
  final Color n0;
}

@immutable
class PrimaryColors {
  const PrimaryColors({
    required this.p100,
    required this.p80,
    required this.p60,
    required this.p40,
    required this.p20,
    required this.p10,
  });

  final Color p100;
  final Color p80;
  final Color p60;
  final Color p40;
  final Color p20;
  final Color p10;
}

@immutable
class SecondaryColors {
  const SecondaryColors({
    required this.y100,
    required this.y80,
    required this.y60,
    required this.y40,
    required this.y20,
    required this.y10,
  });

  final Color y100;
  final Color y80;
  final Color y60;
  final Color y40;
  final Color y20;
  final Color y10;
}

@immutable
class InformationColors {
  const InformationColors({
    required this.b100,
    required this.b80,
    required this.b60,
    required this.b40,
    required this.b20,
    required this.b10,
  });

  final Color b100;
  final Color b80;
  final Color b60;
  final Color b40;
  final Color b20;
  final Color b10;
}

@immutable
class WarningColors {
  const WarningColors({
    required this.o100,
    required this.o80,
    required this.o60,
    required this.o40,
    required this.o20,
    required this.o10,
  });

  final Color o100;
  final Color o80;
  final Color o60;
  final Color o40;
  final Color o20;
  final Color o10;
}
