import 'package:flutter/material.dart';
import 'package:zoom_ui/component/meeting_data.dart';
import 'package:zoom_ui/utils/colors.dart';

import '../component/exit_meeting_dialog.dart';
import '../component/meeting_person.dart';
import '../utils/responsive.dart';

class MeetingScreen extends StatefulWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  State<MeetingScreen> createState() => _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen> {
  bool isVolume = false;
  bool isMic = false;
  bool isVideo = false;
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
                    onPressed: () {
                      setState(() {
                        isVolume = !isVolume;
                      });
                    },
                    icon: isVolume
                        ? const Icon(Icons.volume_up)
                        : const Icon(Icons.volume_off)),
              ],
            ),
            InkWell(
              onTap: () {
                meetingData(context, size);
              },
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
                  onPressed: () {
                    exitMeetingDialog(context, size);
                  },
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
                MeetPerson(
                  size,
                  'https://media.istockphoto.com/id/1270851164/photo/head-shot-portrait-smiling-african-american-man-making-video-call.jpg?s=612x612&w=0&k=20&c=C9F-ffqXQ5H0eYoYinI6qwRTah9yJ4Qz-GWX7GurXjg=',
                  'Jeff Rami',
                  black,
                ),
                MeetPerson(
                  size,
                  'https://img.freepik.com/free-photo/man-with-headset-video-call_23-2148854889.jpg',
                  'Robert',
                  Colors.greenAccent,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                MeetPerson(
                  size,
                  'https://img.freepik.com/free-photo/young-happy-businessman-with-headphones-waving-toward-camera-while-drinking-coffee-home_637285-6011.jpg',
                  'Crish Mark',
                  black,
                ),
                MeetPerson(
                  size,
                  'https://img.freepik.com/premium-photo/positive-arab-freelancer-guy-headphones-having-online-video-call-speaking-business-partner_116547-22602.jpg',
                  'James',
                  black,
                ),
              ],
            ),
          ),
        ],
      ),
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
                          IconButton(
                            onPressed: () {
                              setState(() {
                                isMic = !isMic;
                              });
                            },
                            icon: isMic
                                ? const Icon(Icons.mic_off)
                                : const Icon(Icons.mic),
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
                      VerticalDivider(
                        color: title,
                        thickness: 0.6,
                        endIndent: 10,
                        indent: 10,
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
                      InkWell(
                        onTap: () {
                          setState(() {
                            isMic = !isMic;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            isMic
                                ? Icon(
                                    Icons.mic_off,
                                    color: title,
                                  )
                                : Icon(
                                    Icons.mic,
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
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isVideo = !isVideo;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            isVideo
                                ? Icon(
                                    Icons.videocam_off_outlined,
                                    color: title,
                                  )
                                : Icon(
                                    Icons.videocam,
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
