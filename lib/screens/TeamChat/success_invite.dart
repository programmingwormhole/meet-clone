import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/home_screen.dart';
import 'package:zoom_ui/utils/config.dart';

class SuccessInviteScreen extends StatelessWidget {
  final String email;
  const SuccessInviteScreen(this.email, {super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close),
        ),
        centerTitle: true,
        title: Text('Invite to $appName'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
                color: title.withOpacity(0.1), shape: BoxShape.circle),
            child: Icon(
              Icons.done,
              size: 120,
              color: title,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'An invitation has been sent to',
            style: TextStyle(
              color: subTitle,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            email,
            style: TextStyle(
                color: title, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => const HomeScreen())),
            child: Container(
              height: 50,
              width: size * .9,
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Ok',
                  style: TextStyle(
                      color: title, fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
