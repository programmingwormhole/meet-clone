import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/auth/login/login_screen.dart';
import 'package:zoom_ui/utils/config.dart';
import 'auth/signup/age_screen.dart';
import 'join_meeting.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background,
      drawer: Drawer(
        backgroundColor: title,
      ),
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings_outlined,
            size: 25,
          ),
        ),
      ),
      body: Center(
          child: Container(
        color: background,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 205,
              height: 205,
              decoration: BoxDecoration(
                color: title,
                borderRadius: BorderRadius.circular(40)
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'assets/images/poomLogo.png',
                  width: 200,
                ),
              ),
            )
          ],
        ),
      )),
      bottomNavigationBar: Container(
        height: 270,
        width: double.infinity,
        decoration: BoxDecoration(
            color: black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: TextStyle(color: title, fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Get started with your account',
              style: TextStyle(color: title, fontSize: 15),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const JoinMeetingScreen()));
              },
              child: Container(
                height: 50,
                width: size * .9,
                decoration: BoxDecoration(
                    color: background, borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    'Join a Meeting',
                    style: TextStyle(
                        color: title,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AgeScreen()));
              },
              child: Container(
                height: 50,
                width: size * .9,
                decoration: BoxDecoration(
                    color: title.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: title,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()));
              },
              child: Container(
                height: 50,
                width: size * .9,
                decoration: BoxDecoration(
                    color: title.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: title,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
