import 'package:flutter/material.dart';
import 'package:maltboxd_app/classes/helpers/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.dark);

/// Loads the saved theme from shared preferences and updates the theme notifier accordingly
/// If no theme is saved, defaults to dark mode
Future<void> loadThemeMode() async {
  final prefs = await SharedPreferences.getInstance();
  final savedMode = prefs.getString('theme_mode');

  switch (savedMode) {
    case 'light':
      themeNotifier.value = ThemeMode.light;
      break;
    case 'system':
      themeNotifier.value = ThemeMode.system;
      break;
    default:
      themeNotifier.value = ThemeMode.dark;
      break;
  }
}

/// Saves the selected theme mode to shared preferences
/// The [mode] parameter specifies the theme mode to save
Future<void> saveThemeMode(ThemeMode mode) async {
  final prefs = await SharedPreferences.getInstance();
  final value = switch (mode) {
    ThemeMode.light => 'light',
    ThemeMode.system => 'system',
    ThemeMode.dark => 'dark',
  };
  await prefs.setString('theme_mode', value);
}

ThemeData buildLightTheme() {
  return _buildTheme(Brightness.light);
}

ThemeData buildDarkTheme() {
  return _buildTheme(Brightness.dark);
}

ThemeData _buildTheme(Brightness brightness) {
  final light = brightness == Brightness.light;

  final foreground = light ? AppColors.lightText : AppColors.darkText;
  final muted = light ? AppColors.lightMuted : AppColors.darkMuted;

  final border = light ? AppColors.lightBorder : AppColors.darkBorder;

  final scheme = ColorScheme.fromSeed(
    seedColor: AppColors.accent,
    brightness: brightness,
  ).copyWith(
    primary: AppColors.accent,
    onPrimary: Colors.black,
  );

  TextStyle style(double size, double weight, {bool secondary = false}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      height: 1.4,
      color: secondary ? muted : foreground,
      fontVariations: [FontVariation('wght', weight)],
    );
  }

  return ThemeData(
    brightness: brightness,
    fontFamily: 'Inter',
    colorScheme: scheme,
    scaffoldBackgroundColor: light ? AppColors.lightBackground : AppColors.darkBackground,
    
    textTheme: TextTheme(
      displaySmall: style(36, 700).copyWith(letterSpacing: -1.2),
      titleLarge: style(20, 600),
      bodyLarge: style(16, 400),
      bodyMedium: style(14, 400, secondary: true),
    ),

    appBarTheme: AppBarTheme(
      centerTitle: false,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: light ? AppColors.lightBackground : AppColors.darkBackground,
    ),

    dividerColor: border,
    dividerTheme: DividerThemeData(color: border, thickness: 1),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    ),
  );
}
