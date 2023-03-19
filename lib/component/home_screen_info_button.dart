import 'package:flutter/material.dart';

import '../utils/colors.dart';
void meetingInfo(BuildContext context, double size) {
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
}