import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_ui/screens/TeamChat/add_contact_email.dart';
import 'package:zoom_ui/screens/home_screen.dart';
import 'package:zoom_ui/utils/config.dart';

import '../Contact/contacts_screen.dart';
import '../More/more_screen.dart';

class TeamChat extends StatefulWidget {
  const TeamChat({Key? key}) : super(key: key);

  @override
  State<TeamChat> createState() => _TeamChatState();
}

class _TeamChatState extends State<TeamChat> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Team Chat',
          style: TextStyle(color: title),
        ),
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.edit,
                color: title,
              ))
        ],
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svgs/chat_filled.svg',
                  color: title,
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
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const MoreScreen()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.more_horiz_outlined,
                    size: 30,
                    color: title.withOpacity(0.5),
                  ),
                  Text(
                    'More',
                    style: TextStyle(color: subTitle, fontSize: 11),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/2548/2548881.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Find People and Start Chatting!',
              style: TextStyle(
                color: title,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const AddContact(),
                ),
              ),
              child: Container(
                height: 40,
                width: size * .6,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Center(
                  child: Text(
                    'Add Contacts',
                    style: TextStyle(color: title),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
