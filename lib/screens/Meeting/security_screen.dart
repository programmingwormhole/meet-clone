import 'package:flutter/material.dart';

import '../../utils/config.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool _switch = false;
  bool _switch2 = true;
  bool _switch3 = false;
  bool _switch4 = false;
  bool _switch5 = true;
  bool _switch6 = false;
  bool _switch7 = false;
  bool _switch8 = false;
  @override
  Widget build(BuildContext context) {
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
        title: const Text('Security'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'SETTINGS',
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
                        'Lock Meeting',
                        style: TextStyle(
                            color: title, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Switch(
                        activeColor: Colors.white,
                        activeTrackColor: Colors.green,
                        value: _switch,
                        onChanged: (val) {
                          setState(
                            () {
                              _switch = val;
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
                        'Waiting Room',
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
                        'Hide All Profile Pictures',
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
              'Allow Participant to:',
              style: TextStyle(color: subTitle),
            ),
          ),
          Container(
            height: 305,
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
                        'Share Screen',
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
                        'Start Video',
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
                        'Rename',
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
                        'Unmute',
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
                Divider(
                  color: title.withOpacity(0.4),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    children: [
                      Text(
                        'Share Whiteboards',
                        style: TextStyle(
                            color: title, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Switch(
                        activeColor: Colors.white,
                        activeTrackColor: Colors.green,
                        value: _switch8,
                        onChanged: (val) {
                          setState(
                            () {
                              _switch8 = val;
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
