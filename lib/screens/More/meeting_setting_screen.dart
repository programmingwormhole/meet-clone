import 'package:flutter/material.dart';
import 'package:zoom_ui/utils/colors.dart';

class MeetingSettingScreen extends StatefulWidget {
  const MeetingSettingScreen({Key? key}) : super(key: key);

  @override
  State<MeetingSettingScreen> createState() => _MeetingSettingScreenState();
}

class _MeetingSettingScreenState extends State<MeetingSettingScreen> {
  bool _switch2 = false;
  bool _switch3 = true;
  bool _switch4 = false;
  bool _switch5 = false;
  bool _switch6 = true;
  bool _switch7 = false;
  bool _switch8 = false;
  bool _switch9 = true;
  bool _switch10 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_outlined)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'AUDIO',
                style: TextStyle(color: subTitle),
              ),
            ),
            Container(
              height: 210,
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
                          'Auto-Connect to Audio',
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
                          'Mute My Microphone',
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
                          'Use Original Audio',
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
                  Text('This will allow you to enable or disable original sound in a meeting. Original sound will disable noise suppression.',
                  style: TextStyle(
                    color: subTitle,
                    fontSize: 10,
                  ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'VIDEO',
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
                          'Turn Off My Video',
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
                          'Mirror My Video',
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
                          'Show Video Preview',
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
                          'HD Video',
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
                  Divider(
                    color: title.withOpacity(0.4),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Row(
                      children: [
                        Text(
                          'Picture in Picture',
                          style: TextStyle(
                              color: title, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Switch(
                          activeColor: Colors.white,
                          activeTrackColor: Colors.green,
                          value: _switch9,
                          onChanged: (val) {
                            setState(
                                  () {
                                _switch9 = val;
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'GENERAL',
                style: TextStyle(color: subTitle),
              ),
            ),
            Container(
              height: 50,
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
                          'Auto-Copy Invite Link',
                          style: TextStyle(
                              color: title, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Switch(
                          activeColor: Colors.white,
                          activeTrackColor: Colors.green,
                          value: _switch10,
                          onChanged: (val) {
                            setState(
                                  () {
                                _switch10 = val;
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
