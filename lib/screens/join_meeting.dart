import 'package:flutter/material.dart';
import 'package:zoom_ui/utils/colors.dart';

import 'meeting_screen.dart';

class JoinMeetingScreen extends StatefulWidget {
  const JoinMeetingScreen({Key? key}) : super(key: key);

  @override
  State<JoinMeetingScreen> createState() => _JoinMeetingScreenState();
}

class _JoinMeetingScreenState extends State<JoinMeetingScreen> {
  bool _switch = false;
  bool _switch2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_outlined)),
        title: Text(
          'Join a Meeting',
          style: TextStyle(
              color: title, fontWeight: FontWeight.w500, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: title, width: 0.2),
                  bottom: BorderSide(color: title, width: 0.2),
                ),
                color: title.withOpacity(0.2),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(color: title),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          errorStyle: TextStyle(color: subTitle),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Colors.transparent)),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Colors.transparent)),
                          hintText: 'Meeting ID',
                          hintStyle: TextStyle(color: subTitle)),
                    ),
                    Divider(
                      color: title,
                      thickness: 0.2,
                      endIndent: 30,
                      indent: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(color: title),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          errorStyle: TextStyle(color: subTitle),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Colors.transparent)),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0, color: Colors.transparent)),
                          hintText: 'Your Name',
                          hintStyle: TextStyle(color: subTitle)),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'By clicking "Join", you agree to our Terms and Service and Privacy Statement',
                    style: TextStyle(color: subTitle, height: 1.5),
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
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                          color: background,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'Join a Meeting',
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'JOIN METHODS',
                style: TextStyle(color: subTitle),
              ),
            ),
            const SizedBox(
              height: 20,
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
                          'Don\'t Connect To Audio',
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
                        Text(
                          'Don\'t Connect To Audio',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
