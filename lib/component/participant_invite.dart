import 'package:flutter/material.dart';

import '../utils/config.dart';

void participantInvite(BuildContext context, double size) {
  showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 500,
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
                children: [
                  Text(
                    'Invite',
                    style: TextStyle(
                        color: title,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 320,
                    width: size * 8,
                    decoration: BoxDecoration(
                        color: title.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, top: 5, bottom: 5, right: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: title.withOpacity(0.1),
                                      width: 0.2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Facebook',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.facebook,
                                    color: Colors.blueAccent,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: title.withOpacity(0.1),
                                      width: 0.2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Youtube',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.play_circle,
                                    color: Colors.redAccent,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: title.withOpacity(0.1),
                                      width: 0.2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Telegram',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.telegram,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: title.withOpacity(0.1),
                                      width: 0.2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Messages',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.message_outlined,
                                    color: title,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: title.withOpacity(0.1),
                                      width: 0.2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Gmail',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.mail,
                                    color: title,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom:
                                      BorderSide(color: title.withOpacity(0.1)),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Invite Noom Contacts',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.person_pin_rounded,
                                    color: title,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: title.withOpacity(0.1),
                                      width: 0.2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Invite Desk Phones',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.contact_phone_outlined,
                                    color: title,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: size,
                              child: Row(
                                children: [
                                  Text(
                                    'Copy Invite Link',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.copy,
                                    color: title,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        );
      });
}
