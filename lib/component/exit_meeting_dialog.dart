import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/home_screen.dart';

import '../utils/colors.dart';

void exitMeetingDialog(BuildContext context, double size) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.deepPurple,
          title: Text(
            'End Meeting',
            style: TextStyle(color: title),
          ),
          content: Text(
            'Do you want to end the meeting?',
            style: TextStyle(color: title),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(15)),
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'No',
                    style: TextStyle(color: title),
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(15)),
              child: TextButton(
                  onPressed: () {
                    // When backend connected you have to do here if user logged in the navigate to home screen otherwise welcome screen.
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const HomeScreen()));
                  },
                  child: Text(
                    'Yes',
                    style: TextStyle(color: title),
                  )),
            ),
          ],
        );
      });
}
