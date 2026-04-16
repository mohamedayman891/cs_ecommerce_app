import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'theme_mode_state.dart';

class ThemeModeCubit extends Cubit<ThemeModeState> {
  ThemeModeCubit() : super(ThemeInitial());
  ThemeMode get currentMode {
    if (state is ThemeInitial) {
      return (state as ThemeInitial).themeMode;
    } else if (state is ThemeChanged) {
      return (state as ThemeChanged).themeMode;
    }
    return ThemeMode.light;
  }

  bool get isDark => currentMode == ThemeMode.dark;

  void toggleTheme(bool isDarkMode) {
    emit(ThemeChanged(isDarkMode ? ThemeMode.dark : ThemeMode.light));
  }
}
