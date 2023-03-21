import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_ui/screens/Contact/contacts_screen.dart';
import 'package:zoom_ui/screens/TeamChat/team_chat_screen.dart';
import 'package:zoom_ui/screens/More/more_screen.dart';
import 'package:zoom_ui/utils/responsive.dart';
import '../utils/config.dart';
import '../widgets/app_bar.dart';
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
      bottomNavigationBar: Container(
        height: 50,
        width: size,
        color: title.withOpacity(0.1),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svgs/camera_filled.svg',
                  color: title,
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
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => const TeamChat()));
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
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => const ContactScreen()));
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
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => const MoreScreen()));
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
    );
  }
}
