import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  // --- Push Methods ---
  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);
  }

  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) {
    return Navigator.of(this).pushReplacementNamed<T, TO>(
      routeName,
      result: result,
      arguments: arguments,
    );
  }

  void pop<T extends Object?>([T? result]) {
    if (Navigator.of(this).canPop()) {
      Navigator.of(this).pop(result);
    }
  }
}
