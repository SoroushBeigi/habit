import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit/src/common/resources/theme/provider/theme_controller.dart';
import 'package:habit/src/common/resources/theme/provider/theme_state.dart';

final themeControllerProvider = AsyncNotifierProvider<ThemeController, ThemeState>(() {
  return ThemeController();
});