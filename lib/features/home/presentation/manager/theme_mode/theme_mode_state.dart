part of 'theme_mode_cubit.dart';

@immutable
sealed class ThemeModeState {}

class ThemeInitial extends ThemeModeState {
  final ThemeMode themeMode;

  ThemeInitial({this.themeMode = ThemeMode.light});
}

class ThemeChanged extends ThemeModeState {
  final ThemeMode themeMode;

  ThemeChanged(this.themeMode);
}
