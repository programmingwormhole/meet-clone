import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/Meeting/meeting_screen.dart';
import 'package:zoom_ui/utils/config.dart';

class StartNewMeetingScreen extends StatefulWidget {
  const StartNewMeetingScreen({Key? key}) : super(key: key);

  @override
  State<StartNewMeetingScreen> createState() => _StartNewMeetingScreenState();
}

class _StartNewMeetingScreenState extends State<StartNewMeetingScreen> {
  bool _switch = false;
  bool _switch2 = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_outlined)),
        title: const Text('Start a Meeting'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
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
                        'Video On',
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
                  color: black.withOpacity(0.4),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Use Personal Meeting Id (PMI)',
                            style: TextStyle(
                                color: title, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '821 524 6548',
                            style: TextStyle(
                                color: subTitle),
                          ),
                        ],
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
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const MeetingScreen()));
            },
            child: Container(
              height: 50,
              width: size * .9,
              decoration: BoxDecoration(
                  color: background, borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  'Join a Meeting',
                  style: TextStyle(
                      color: title, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
