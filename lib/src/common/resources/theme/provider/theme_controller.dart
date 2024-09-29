import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit/src/common/resources/asset_manager.dart';
import 'package:habit/src/common/resources/theme/app_theme_data.dart';
import 'package:habit/src/common/resources/theme/provider/theme_state.dart';

enum AppTheme {
  light,
  dark,
  system,
}

class ThemeController extends AsyncNotifier<ThemeState> {


  @override
  Future<ThemeState> build() async{
    final defaultTheme = await _getSystemTheme();
    final icon = _getIcon(defaultTheme);
    return ThemeState(appTheme: defaultTheme, icon: icon);
  }

  Future<void> toggleTheme(AppTheme newTheme) async {
    state = const AsyncLoading();

    try {
      AppTheme appTheme;

      if (newTheme == AppTheme.system) {
        appTheme = await _getSystemTheme();
      } else {
        appTheme = newTheme;
      }

      final icon = _getIcon(appTheme);
      state = AsyncData(ThemeState(appTheme: appTheme, icon: icon));
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    }
  }

  Future<AppTheme> _getSystemTheme() async{
    final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
    return brightness == Brightness.dark ? AppTheme.dark : AppTheme.light;
  }

  IconData _getIcon(AppTheme appTheme) {
    switch (appTheme) {
      case AppTheme.dark:
        return IconManager.lightMode;
      case AppTheme.light:
        return IconManager.darkMode;
      case AppTheme.system:
      default:
        return IconManager.darkMode;
    }
  }

  ThemeData getTheme(AppTheme appTheme) {
    final darkTheme = DarkThemeData().materialThemeData;
    final lightTheme = LightThemeData().materialThemeData;
    switch (appTheme) {
      case AppTheme.light:
        return lightTheme;
      case AppTheme.dark:
        return darkTheme;
      case AppTheme.system:
      default:
        final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
        return brightness == Brightness.dark ? darkTheme : lightTheme;
    }
  }
}