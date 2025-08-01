import 'package:flutter/material.dart';

@immutable
class TextSystem {
  const TextSystem({
    required this.heading,
    required this.display,
    required this.button,
    required this.caption,
  });

  final TextHeading heading;
  final TextDisplay display;
  final TextButton button;
  final TextCaption caption;

  static const TextSystem defaultSystem = TextSystem(
    heading: TextHeading(
      h1: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
      h2: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
      h3: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      h4: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
    ),
    display: TextDisplay(
      title1: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
      body1: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      body2: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      body3: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    ),
    button: TextButton(
      ld: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
      l: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      md: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
      m: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    ),
    caption: TextCaption(
      caption1: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
      caption2: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
      tab: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
    ),
  );
}

@immutable
class TextHeading {
  const TextHeading({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
  });

  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
}

@immutable
class TextDisplay {
  const TextDisplay({
    required this.title1,
    required this.body1,
    required this.body2,
    required this.body3,
  });

  final TextStyle title1;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle body3;
}

@immutable
class TextButton {
  const TextButton({
    required this.ld,
    required this.l,
    required this.md,
    required this.m,
  });

  final TextStyle ld;
  final TextStyle l;
  final TextStyle md;
  final TextStyle m;
}

@immutable
class TextCaption {
  const TextCaption({
    required this.caption1,
    required this.caption2,
    required this.tab,
  });

  final TextStyle caption1;
  final TextStyle caption2;
  final TextStyle tab;
}
