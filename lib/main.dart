import 'package:flutter/material.dart';

import 'package:rphu/screen/login_screen.dart';
import 'package:rphu/screen/main_screen.dart';
import 'package:rphu/screen/splash_screen.dart';
import 'package:rphu/screen/update_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/main': (context) => const MainScreen(),
        '/update': (context) => const UpdateScreen()
      },
      // home: DataListWidget(),
    );
  }
}
