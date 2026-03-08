
import 'package:design_system/theme/theme.dart';
import 'package:design_system/token/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:login_module/login_screen.dart';
import 'package:profile_module/profile_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      color: ColorPalette.primaryColor,
      theme: lightTheme,
      showSemanticsDebugger: true,
      routes: {
        '/': (context) => LoginScreen(
          onLoginSuccess: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          },
        ),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
