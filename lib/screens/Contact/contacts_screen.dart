import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_ui/screens/TeamChat/add_contact_email.dart';
import 'package:zoom_ui/screens/TeamChat/team_chat_screen.dart';
import 'package:zoom_ui/screens/home_screen.dart';
import 'package:zoom_ui/screens/More/more_screen.dart';
import 'package:zoom_ui/utils/config.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        automaticallyImplyLeading: false,
        title: Text(
          'Channels',
          style: TextStyle(color: title),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AddContact())),
              icon: const Icon(Icons.add))
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svgs/user_filled.svg',
                  color: title,
                  width: 24,
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
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: title.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(25)),
              child: Icon(
                Icons.person,
                size: 100,
                color: title,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'There are no channels created yet.',
              style: TextStyle(color: title),
            )
          ],
        ),
      ),
    );
  }
}
