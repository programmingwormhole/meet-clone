import 'package:flutter/material.dart';

import '../../utils/config.dart';

class MeetingSetting extends StatefulWidget {
  const MeetingSetting({Key? key}) : super(key: key);

  @override
  State<MeetingSetting> createState() => _MeetingSettingState();
}

class _MeetingSettingState extends State<MeetingSetting> {
  bool _switch2 = false;
  bool _switch3 = false;
  bool _switch4 = false;
  bool _switch5 = false;
  bool _switch6 = true;
  bool _switch7 = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
          ),
        ),
        title: const Text('Meeting Settings'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'HOST CONTROLS',
              style: TextStyle(color: subTitle),
            ),
          ),
          Container(
            height: 177,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: title.withOpacity(0.2),
                border: Border(
                  top: BorderSide(color: title, width: 0.2),
                  bottom: BorderSide(color: title, width: 0.2),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    children: [
                      Text(
                        'Meeting Topic',
                        style: TextStyle(
                            color: title, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Container(
                        height: 35,
                        width: size * .6,
                        decoration: BoxDecoration(
                            color: title.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(color: title.withOpacity(0.5)),
                            decoration: InputDecoration(
                                hintText: 'Robert\'s Meet',
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: title.withOpacity(0.1))),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: title.withOpacity(0.1)))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: title.withOpacity(0.4),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    children: [
                      Text(
                        'Mute upon Entry',
                        style: TextStyle(
                            color: title, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Switch(
                        activeColor: Colors.white,
                        activeTrackColor: Colors.green,
                        value: _switch2,
                        onChanged: (val) {
                          setState(
                            () {
                              _switch2 = val;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: title.withOpacity(0.4),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    children: [
                      Text(
                        'Play Join Leave Sound',
                        style: TextStyle(
                            color: title, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Switch(
                        activeColor: Colors.white,
                        activeTrackColor: Colors.green,
                        value: _switch3,
                        onChanged: (val) {
                          setState(
                            () {
                              _switch3 = val;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'GENERAL',
              style: TextStyle(color: subTitle),
            ),
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: title.withOpacity(0.2),
                border: Border(
                  top: BorderSide(color: title, width: 0.2),
                  bottom: BorderSide(color: title, width: 0.2),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    children: [
                      Text(
                        'Always Show Meeting Controls',
                        style: TextStyle(
                            color: title, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Switch(
                        activeColor: Colors.white,
                        activeTrackColor: Colors.green,
                        value: _switch4,
                        onChanged: (val) {
                          setState(
                            () {
                              _switch4 = val;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: title.withOpacity(0.4),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    children: [
                      Text(
                        'Show Name when Participant Join',
                        style: TextStyle(
                            color: title, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Switch(
                        activeColor: Colors.white,
                        activeTrackColor: Colors.green,
                        value: _switch5,
                        onChanged: (val) {
                          setState(
                            () {
                              _switch5 = val;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: title.withOpacity(0.4),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    children: [
                      Text(
                        'Show Non-Video Participants',
                        style: TextStyle(
                            color: title, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Switch(
                        activeColor: Colors.white,
                        activeTrackColor: Colors.green,
                        value: _switch6,
                        onChanged: (val) {
                          setState(
                            () {
                              _switch6 = val;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: title.withOpacity(0.4),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    children: [
                      Text(
                        'Stop incoming video',
                        style: TextStyle(
                            color: title, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Switch(
                        activeColor: Colors.white,
                        activeTrackColor: Colors.green,
                        value: _switch7,
                        onChanged: (val) {
                          setState(
                            () {
                              _switch7 = val;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
