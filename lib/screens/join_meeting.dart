import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:zoom_ui/utils/colors.dart';

class JoinMeetingScreen extends StatefulWidget {
  const JoinMeetingScreen({Key? key}) : super(key: key);

  @override
  State<JoinMeetingScreen> createState() => _JoinMeetingScreenState();
}

class _JoinMeetingScreenState extends State<JoinMeetingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _newKey = GlobalKey<FormState>();
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
                  top: BorderSide(color: title, width: 0.6),
                  bottom: BorderSide(color: title, width: 0.6),
                ),
                color: title.withOpacity(0.2),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Form(
                      key: _formKey,
                      child: TextFormField(
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
                    ),
                    Divider(
                      color: title,
                      thickness: 0.2,
                      endIndent: 30,
                      indent: 30,
                    ),
                    Form(
                      key: _newKey,
                      child: TextFormField(
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
                      ),
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
                  Container(
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
                    top: BorderSide(color: title, width: 0.6),
                    bottom: BorderSide(color: title, width: 0.6),
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
                        SizedBox(
                          width: 130,
                          child: LiteRollingSwitch(
                            //initial value
                            value: false,
                            textOn: 'On',
                            textOff: 'Off',
                            colorOn: Colors.green,
                            colorOff: Colors.red,
                            iconOn: Icons.done,
                            iconOff: Icons.remove_circle,
                            textSize: 15,
                            onChanged: (bool state) {},
                            onTap: () {},
                            onDoubleTap: () {},
                            onSwipe: () {},
                          ),
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
                        SizedBox(
                          width: 130,
                          child: LiteRollingSwitch(
                            //initial value
                            value: false,
                            textOn: 'On',
                            textOff: 'Off',
                            colorOn: Colors.green,
                            colorOff: Colors.red,
                            iconOn: Icons.done,
                            iconOff: Icons.remove_circle,
                            textSize: 15,
                            onChanged: (bool state) {},
                            onTap: () {},
                            onDoubleTap: () {},
                            onSwipe: () {},
                          ),
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
