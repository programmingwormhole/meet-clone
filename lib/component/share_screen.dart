import 'package:flutter/material.dart';

import '../screens/meeting_screen.dart';
import '../utils/colors.dart';

void shareScreen(BuildContext context, double size) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.white24,
          title: Text(
            'Share Screen',
            style: TextStyle(color: title),
          ),
          content: Container(
            height: 40,
            width: size * .9,
            color: black.withOpacity(0.1),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: title.withOpacity(0.2),
              ),
              child: Center(
                child: TextFormField(
                  style: TextStyle(color: title),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      errorStyle: TextStyle(color: subTitle),
                      hintText: 'Sharing Key or Meeting ID',
                      hintStyle: TextStyle(color: subTitle)),
                ),
              ),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const MeetingScreen()));
                },
                child: const Text('Join Meeting'))
          ],
        );
      });
}
