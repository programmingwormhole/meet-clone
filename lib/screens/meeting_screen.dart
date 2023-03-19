import 'package:flutter/material.dart';
import 'package:zoom_ui/utils/colors.dart';

import '../utils/responsive.dart';

class MeetingScreen extends StatefulWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  State<MeetingScreen> createState() => _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: black,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_outlined)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.outbond_outlined)),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: const [
                  Text('🛡 Noom'),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(15)),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'End',
                    style: TextStyle(color: title),
                  )),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Container(
                  width: size * .5,
                  height: size,
                  decoration: BoxDecoration(
                      color: title,
                      border: Border.all(color: black, width: 1.5)),
                ),
                Container(
                  width: size * .5,
                  height: size,
                  decoration: BoxDecoration(
                      color: title,
                      border: Border.all(color: black, width: 1.5)),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Container(
                  width: size * .5,
                  height: size,
                  decoration: BoxDecoration(
                      color: title,
                      border: Border.all(color: black, width: 1.5)),
                ),
                Container(
                  width: size * .5,
                  height: size,
                  decoration: BoxDecoration(
                      color: title,
                      border: Border.all(color: black, width: 1.5)),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Responsive.isDesktop(context)
          ? FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {},
              child: Icon(
                Icons.chat,
                color: title,
              ),
            )
          : null,
      bottomNavigationBar: Responsive.isDesktop(context)
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: size,
                decoration: BoxDecoration(
                  color: title.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mic_off,
                            color: title,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Mute',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.videocam_off_outlined,
                            color: title,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Start Video',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_search_outlined,
                            color: title,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Participant',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Icon(
                      //       Icons.chat,
                      //       color: title,
                      //     ),
                      //     const SizedBox(
                      //       height: 5,
                      //     ),
                      //     Text(
                      //       'Chat',
                      //       style: TextStyle(color: subTitle),
                      //     ),
                      //   ],
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.emoji_emotions_outlined,
                            color: title,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Reaction',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.screen_share_sharp,
                            color: title,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Share',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.more_horiz_outlined,
                            color: title,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'More',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          : Container(
              height: 50,
              width: size,
              color: black,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mic_off,
                            color: title,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Mute',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.videocam_off_outlined,
                            color: title,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Start Video',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      VerticalDivider(
                        color: title,
                        thickness: 0.6,
                        endIndent: 10,
                        indent: 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_search_outlined,
                            color: title,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Participant',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color: title,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Chat',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.emoji_emotions_outlined,
                            color: title,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Reaction',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.screen_share_sharp,
                            color: title,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Share',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.more_horiz_outlined,
                            color: title,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'More',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
