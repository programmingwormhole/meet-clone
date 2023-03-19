import 'package:flutter/material.dart';
import 'package:zoom_ui/utils/responsive.dart';
import '../utils/colors.dart';
import '../widgets/app_bar.dart';
import '../widgets/bottom_nav_bar.dart';
import 'Responsive/desktop_home_screen.dart';
import 'Responsive/mobile_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(context, size),
      backgroundColor: black,
      body: Responsive.isDesktop(context)
          ? desktopView(size, context)
          : mobileView(context, size),
      bottomNavigationBar: bottomNavBar(size),
    );
  }
}
