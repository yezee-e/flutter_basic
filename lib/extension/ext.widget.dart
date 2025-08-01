import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension AppWidgetEx on Widget {
  Future<T?> pushNavigate<T>(BuildContext context) async {
    return Navigator.of(context).push(CupertinoPageRoute(builder: (c) => this));
  }
}
