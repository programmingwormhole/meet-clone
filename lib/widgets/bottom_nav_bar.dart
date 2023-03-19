import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';

Widget bottomNavBar(double size) {
  return Container(
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svgs/chat_outline.svg',
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svgs/user_outline.svg',
              color: title,
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.more_horiz_outlined,
              size: 30,
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
  );
}
