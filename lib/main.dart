import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/OnBoarding/screen_1.dart';
import 'package:zoom_ui/screens/auth/login/login_screen.dart';
import 'package:zoom_ui/screens/home_screen.dart';
import 'package:zoom_ui/screens/meeting_screen.dart';
import 'package:zoom_ui/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),

    );
  }
}