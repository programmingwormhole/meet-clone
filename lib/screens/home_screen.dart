import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_ui/utils/responsive.dart';

import '../utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? AppBar(
              backgroundColor: black,
              automaticallyImplyLeading: false,
            )
          : AppBar(
              backgroundColor: black,
              automaticallyImplyLeading: false,
              title: const Text('Meetings'),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.black,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 300,
                              width: size,
                              decoration: BoxDecoration(
                                color: title.withOpacity(0.2),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Stack(
                                          alignment: Alignment.center,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Positioned(
                                              top: -25,
                                              child: Container(
                                                height: 60,
                                                width: 60,
                                                decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: title
                                                              .withOpacity(0.1),
                                                          blurRadius: 8)
                                                    ],
                                                    color: Colors.red,
                                                    shape: BoxShape.circle),
                                                child: Icon(
                                                  Icons.close,
                                                  size: 35,
                                                  color: title,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Personal Meeting ID',
                                      style:
                                          TextStyle(color: title, fontSize: 14),
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
                                    InkWell(
                                      onTap: () {},
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Start meeting',
                                                    style: TextStyle(
                                                      color: title,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .calendar_today_outlined,
                                                    color: title,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: size * 0.8,
                                        decoration: BoxDecoration(
                                          color: title.withOpacity(0.2),
                                          border: const Border(
                                            top: BorderSide(
                                                color: Colors.white,
                                                width: 0.1),
                                            bottom: BorderSide(
                                                color: Colors.white,
                                                width: 0.1),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0, right: 15),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
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
                                    InkWell(
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
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
                                    const SizedBox(
                                      height: 30,
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    icon: const Icon(Icons.info_outline))
              ],
            ),
      backgroundColor: black,
      body: Responsive.isDesktop(context)
          ? Row(
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
                                    style:
                                        TextStyle(color: title, fontSize: 14),
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8),
                                    child: InkWell(
                                      onTap: () {},
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Start meeting',
                                                    style: TextStyle(
                                                      color: title,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .calendar_today_outlined,
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: size * 0.8,
                                        decoration: BoxDecoration(
                                          color: title.withOpacity(0.2),
                                          border: const Border(
                                            top: BorderSide(
                                                color: Colors.white,
                                                width: 0.1),
                                            bottom: BorderSide(
                                                color: Colors.white,
                                                width: 0.1),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0, right: 15),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
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
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
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
                              onTap: () {},
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        Responsive.isDesktop(context) ? 80 : 55,
                                    width:
                                        Responsive.isDesktop(context) ? 80 : 55,
                                    decoration: BoxDecoration(
                                        color: Colors.deepOrange,
                                        borderRadius:
                                            BorderRadius.circular(15)),
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
                                        fontSize: Responsive.isDesktop(context)
                                            ? 20
                                            : 12),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        Responsive.isDesktop(context) ? 80 : 55,
                                    width:
                                        Responsive.isDesktop(context) ? 80 : 55,
                                    decoration: BoxDecoration(
                                        color: background,
                                        borderRadius:
                                            BorderRadius.circular(15)),
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
                                        fontSize: Responsive.isDesktop(context)
                                            ? 20
                                            : 12),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        Responsive.isDesktop(context) ? 80 : 55,
                                    width:
                                        Responsive.isDesktop(context) ? 80 : 55,
                                    decoration: BoxDecoration(
                                        color: background,
                                        borderRadius:
                                            BorderRadius.circular(15)),
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
                                        fontSize: Responsive.isDesktop(context)
                                            ? 20
                                            : 12),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Container(
                                    height:
                                        Responsive.isDesktop(context) ? 80 : 55,
                                    width:
                                        Responsive.isDesktop(context) ? 80 : 55,
                                    decoration: BoxDecoration(
                                        color: background,
                                        borderRadius:
                                            BorderRadius.circular(15)),
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
                                      fontSize: Responsive.isDesktop(context)
                                          ? 20
                                          : 12,
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
            )
          : Column(
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
                      onTap: () {},
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
            ),
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
      ),
    );
  }
}
