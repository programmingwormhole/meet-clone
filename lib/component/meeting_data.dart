import 'package:flutter/material.dart';

import '../utils/colors.dart';

void meetingData(BuildContext context, double size) {
  showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          width: size,
          decoration: BoxDecoration(
            color: title.withOpacity(0.1),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Robert\'s Meeting Room',
                    style: TextStyle(
                        color: title,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Meeting ID',
                            style: TextStyle(color: subTitle),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Host',
                            style: TextStyle(color: subTitle),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Passcode',
                            style: TextStyle(color: subTitle),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Invite Link',
                            style: TextStyle(color: subTitle),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Encryption',
                            style: TextStyle(color: subTitle),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '521 648 7517',
                            style: TextStyle(color: title),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Robert',
                            style: TextStyle(color: title),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'skr8wie4',
                            style: TextStyle(color: title),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'null',
                            style: TextStyle(color: Colors.red),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Enabled',
                            style: TextStyle(color: title),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'You are connected to Noom Global Network via',
                    style: TextStyle(color: subTitle),
                  ),
                  Text(
                    'data center in the Bangladesh.',
                    style: TextStyle(color: subTitle),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
