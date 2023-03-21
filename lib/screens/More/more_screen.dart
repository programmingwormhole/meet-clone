import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_ui/screens/Contact/contacts_screen.dart';
import 'package:zoom_ui/screens/More/accessibility_setting_screen.dart';
import 'package:zoom_ui/screens/More/contact_settiing_screen.dart';
import 'package:zoom_ui/screens/TeamChat/team_chat_screen.dart';
import 'package:zoom_ui/utils/colors.dart';

import '../home_screen.dart';
import 'meeting_setting_screen.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('More'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: size,
              decoration: BoxDecoration(
                color: title.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: title.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              'https://img.freepik.com/free-photo/man-with-headset-video-call_23-2148854889.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Robert',
                              style: TextStyle(
                                  color: title,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.account_circle_rounded,
                                    color: subTitle, size: 15),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'progra***@gmail.com',
                                  style: TextStyle(color: title, fontSize: 12),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios, color: title)
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Try $appName Pro',
                        style: const TextStyle(color: Colors.blue))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'SETTINGS',
              style: TextStyle(color: subTitle),
            ),
            Divider(
              color: title.withOpacity(0.1),
              thickness: 1.5,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MeetingSettingScreen())),
              child: ListTile(
                leading: Icon(
                  Icons.videocam,
                  color: title,
                ),
                title: Text(
                  'Meetings',
                  style: TextStyle(color: title),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: title,
                ),
              ),
            ),
            Divider(
              color: title.withOpacity(0.1),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ContactSettingScreen())),
              child: ListTile(
                leading: Icon(
                  Icons.person_pin_rounded,
                  color: title,
                ),
                title: Text(
                  'Contacts',
                  style: TextStyle(color: title),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: title,
                ),
              ),
            ),
            Divider(
              color: title.withOpacity(0.1),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccessibilitySetting())),
              child: ListTile(
                leading: Icon(
                  Icons.accessibility,
                  color: title,
                ),
                title: Text(
                  'Accessibility',
                  style: TextStyle(color: title),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: title,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Copyright ©2022-2023 $appName Video Communications, Inc. All rights reserved.',
              style: TextStyle(color: subTitle),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              width: size * .9,
              decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: title.withOpacity(0.1), width: 2)),
              child: Center(
                child: Text(
                  'Developer: Md Shirajul Islam',
                  style: TextStyle(color: title, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: size * .9,
              decoration: BoxDecoration(
                  color: title.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: title.withOpacity(0.1), width: 2)),
              child: Center(
                child: Text(
                  'Author: Programming Wormhole',
                  style: TextStyle(color: title, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        width: size,
        color: title.withOpacity(0.1),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HomeScreen()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svgs/camera_outline.svg',
                    color: title.withOpacity(0.5),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Meetings',
                    style: TextStyle(color: subTitle, fontSize: 11),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const TeamChat()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svgs/chat_outline.svg',
                    color: title.withOpacity(0.5),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Team Chat',
                    style: TextStyle(color: subTitle, fontSize: 11),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ContactScreen()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svgs/user_outline.svg',
                    color: title.withOpacity(0.5),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Contacts',
                    style: TextStyle(color: subTitle, fontSize: 11),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.more_horiz_outlined,
                  size: 34,
                  color: title,
                ),
                Text(
                  'More',
                  style: TextStyle(color: subTitle, fontSize: 11),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
