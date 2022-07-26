import 'package:flutter/material.dart';
import 'package:switch_theme/view/view_model/home_view_model.dart';

class DepInjector extends InheritedWidget {
  const DepInjector({Key? key, required this.homeViewModel, required Widget child})
      : super(key: key, child: child);
  final HomeViewModel homeViewModel;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static DepInjector of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DepInjector>()!;
  }
}
