import 'package:flutter/material.dart';

import '../utils/colors.dart';

void participantMuteAll(BuildContext context, double size) {
  showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 320,
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
                    'Mute All',
                    style: TextStyle(
                        color: title,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Mute all current and future participants.',
                    style: TextStyle(
                      color: title,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                          color: background,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'Mute All',
                          style: TextStyle(
                              color: title,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                          color: title.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                              color: title,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: title.withOpacity(0.2),
                  ),
                  Row(
                    children: [
                      Text(
                        'Allow participants to unmute themselves',
                        style: TextStyle(color: title, fontSize: 12),
                      ),
                      const Spacer(),
                      Switch(value: false, onChanged: (context) {})
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}
