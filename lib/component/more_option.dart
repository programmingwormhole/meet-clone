import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/Meeting/meeting_setting.dart';
import 'package:zoom_ui/screens/Meeting/security_screen.dart';

import '../utils/colors.dart';

void moreMenu(BuildContext context, double size) {
  showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 240,
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
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                        color: title.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> const SecurityScreen()));
                              },
                              child: Container(
                                height: 50,
                                width: size,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: title.withOpacity(0.5),
                                        width: 0.2),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Security',
                                      style: TextStyle(color: title),
                                    ),
                                    const Spacer(),
                                    Icon(
                                      Icons.shield_moon_outlined,
                                      color: title,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> const MeetingSetting()));
                              },
                              child: Container(
                                height: 50,
                                width: size,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: title.withOpacity(0.5),
                                        width: 0.2),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Meeting Setting',
                                      style: TextStyle(color: title),
                                    ),
                                    const Spacer(),
                                    Icon(
                                      Icons.settings_outlined,
                                      color: title,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 50,
                                width: size,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: title.withOpacity(0.5),
                                        width: 0.2),
                                  ),
                                ),
                                child: Row(
                                  children: const [
                                    Text(
                                      'Disconnect Audio',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.headphones,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      height: 40,
                      child: Center(
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: title),
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        );
      });
}
