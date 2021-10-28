import 'package:flutter/material.dart';

class BDMNavigator {
  static GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  static NavigatorState? state = navigatorKey.currentState;
}
