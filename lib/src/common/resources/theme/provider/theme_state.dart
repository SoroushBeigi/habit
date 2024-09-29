import 'package:flutter/cupertino.dart';
import 'package:habit/src/common/resources/theme/provider/theme_controller.dart';

class ThemeState {
  final AppTheme appTheme;
  final IconData? icon;

  ThemeState({
    required this.appTheme,
    required this.icon,
  });
}