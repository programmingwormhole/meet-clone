import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/join_meeting.dart';
import 'package:zoom_ui/screens/start_new_meeting.dart';

import '../../component/share_screen_dialog.dart';
import '../../utils/colors.dart';
import '../../utils/responsive.dart';

Widget desktopView(double size, BuildContext context) {
  return Row(
    children: [
      Expanded(
        flex: 2,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 300,
                  width: 250,
                  decoration: BoxDecoration(
                      color: title.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Personal Meeting ID',
                          style: TextStyle(color: title, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '821 548 6597',
                          style: TextStyle(
                              color: title,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const StartNewMeetingScreen()));
                            },
                            child: Container(
                              height: 50,
                              width: size * 0.8,
                              decoration: BoxDecoration(
                                color: title.withOpacity(0.2),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Start meeting',
                                          style: TextStyle(
                                            color: title,
                                          ),
                                        ),
                                        Icon(
                                          Icons.calendar_today_outlined,
                                          color: title,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: InkWell(
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=> const ()));
                            },
                            child: Container(
                              height: 50,
                              width: size * 0.8,
                              decoration: BoxDecoration(
                                color: title.withOpacity(0.2),
                                border: const Border(
                                  top: BorderSide(
                                      color: Colors.white, width: 0.1),
                                  bottom: BorderSide(
                                      color: Colors.white, width: 0.1),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Send Invitation',
                                      style: TextStyle(
                                        color: title,
                                      ),
                                    ),
                                    Icon(
                                      Icons.share,
                                      color: title,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              width: size * 0.8,
                              decoration: BoxDecoration(
                                color: title.withOpacity(0.2),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Edit Meeting',
                                          style: TextStyle(
                                            color: title,
                                          ),
                                        ),
                                        Icon(
                                          Icons.edit,
                                          color: title,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      Expanded(
        flex: 7,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const StartNewMeetingScreen()));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const JoinMeetingScreen()));
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
                    onTap: null,
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
            ],
          ),
        ),
      ),
    ],
  );
}
