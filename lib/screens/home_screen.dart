import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:zoom_ui/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
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
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  border: const Border(
                    top: BorderSide(color: Colors.white, width: 1.5),
                    bottom: BorderSide(color: Colors.white, width: 1.5),
                  )),
              child: Center(
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      errorStyle: TextStyle(color: subTitle),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: title, width: 0),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 0),
                      ),
                      fillColor: title.withOpacity(0.1),
                      hintText: 'Meeting ID',
                      hintStyle: TextStyle(color: subTitle)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  border: const Border(
                    top: BorderSide(color: Colors.white, width: 1.5),
                    bottom: BorderSide(color: Colors.white, width: 1.5),
                  )),
              child: Center(
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      errorStyle: TextStyle(color: subTitle),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: title, width: 0),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 0),
                      ),
                      fillColor: title.withOpacity(0.1),
                      hintText: 'Your Name',
                      hintStyle: TextStyle(color: subTitle)),
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
                    'By clicking \"Join\", you agree to our Terms and Service and Privacy Statement',
                    style: TextStyle(color: subTitle, height: 1.5),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                        color: title.withOpacity(0.4),
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
                'Join option',
                style: TextStyle(
                    color: subTitle, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  border: const Border(
                    top: BorderSide(color: Colors.white, width: 1.5),
                    bottom: BorderSide(color: Colors.white, width: 1.5),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Row(
                      children: [
                        const Text(
                          'Don\'t Connect To Audio',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
                            onChanged: (bool state) {
                              //Use it to manage the different states
                              print('Current State of SWITCH IS: $state');
                            },
                            onTap: () {},
                            onDoubleTap: () {},
                            onSwipe: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.4),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Row(
                      children: [
                        const Text(
                          'Don\'t Connect To Audio',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
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
                            onChanged: (bool state) {
                              //Use it to manage the different states
                              print('Current State of SWITCH IS: $state');
                            },
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
