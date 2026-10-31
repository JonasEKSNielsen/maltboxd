import 'package:flutter/material.dart';
import 'package:maltboxd_app/classes/auth/auth_gate.dart';
import 'classes/helpers/theme_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadThemeMode();
  runApp(const MaltboxdApp());
}

class MaltboxdApp extends StatelessWidget {
  const MaltboxdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, mode, _) {
        return MaterialApp(
          title: 'Maltboxd',
          debugShowCheckedModeBanner: false,
          themeMode: mode,
          theme: buildLightTheme(),
          darkTheme: buildDarkTheme(),
          home: const AuthGate(),
        );
      },
    );
  }
}
