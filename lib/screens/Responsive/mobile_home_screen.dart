import 'package:flutter/material.dart';

import '../../component/share_screen_dialog.dart';
import '../../utils/config.dart';
import '../../utils/responsive.dart';
import '../join_meeting.dart';
import '../start_new_meeting.dart';
Widget mobileView(BuildContext context, double size) {
  return Column(
    children: [
      const SizedBox(
        height: 10,
      ),
      // Header //
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const StartNewMeetingScreen()));
            },
            child: Column(
              children: [
                Container(
                  height: Responsive.isDesktop(context) ? 80 : 55,
                  width: Responsive.isDesktop(context) ? 80 : 55,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Icon(
                      Icons.video_call_sharp,
                      size: 30,
                      color: title,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'New Meeting',
                  style: TextStyle(
                      color: subTitle,
                      fontSize:
                      Responsive.isDesktop(context) ? 20 : 12),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const JoinMeetingScreen()));
            },
            child: Column(
              children: [
                Container(
                  height: Responsive.isDesktop(context) ? 80 : 55,
                  width: Responsive.isDesktop(context) ? 80 : 55,
                  decoration: BoxDecoration(
                      color: background,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Icon(
                      Icons.add_box,
                      size: 30,
                      color: title,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Join',
                  style: TextStyle(
                      color: subTitle,
                      fontSize:
                      Responsive.isDesktop(context) ? 20 : 12),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Container(
                  height: Responsive.isDesktop(context) ? 80 : 55,
                  width: Responsive.isDesktop(context) ? 80 : 55,
                  decoration: BoxDecoration(
                      color: background,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Icon(
                      Icons.calendar_month_rounded,
                      size: 30,
                      color: title,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Schedule',
                  style: TextStyle(
                      color: subTitle,
                      fontSize:
                      Responsive.isDesktop(context) ? 20 : 12),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              shareScreenDialog(context, size);
            },
            child: Column(
              children: [
                Container(
                  height: Responsive.isDesktop(context) ? 80 : 55,
                  width: Responsive.isDesktop(context) ? 80 : 55,
                  decoration: BoxDecoration(
                      color: background,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Icon(
                      Icons.screen_share_rounded,
                      size: 30,
                      color: title,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Share Screen',
                  style: TextStyle(
                    color: subTitle,
                    fontSize: Responsive.isDesktop(context) ? 20 : 12,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      // Add Calendar //
      InkWell(
        onTap: () {},
        child: Container(
          height: 45,
          width: size,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: title.withOpacity(0.1)),
              bottom: BorderSide(
                color: title.withOpacity(0.1),
              ),
            ),
          ),
          child: const Center(
            child: Text(
              'Add a calendar',
              style: TextStyle(
                  color: Colors.blue, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      )
    ],
  );
}