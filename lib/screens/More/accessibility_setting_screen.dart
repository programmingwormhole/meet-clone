import 'package:flutter/material.dart';
import 'package:zoom_ui/utils/colors.dart';

class AccessibilitySetting extends StatefulWidget {
  const AccessibilitySetting({Key? key}) : super(key: key);

  @override
  State<AccessibilitySetting> createState() => _AccessibilitySettingState();
}

class _AccessibilitySettingState extends State<AccessibilitySetting> {
  bool _switch4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_outlined)),
        centerTitle: true,
        title: const Text('Accessibility'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'SCREEN',
              style: TextStyle(color: subTitle),
            ),
          ),
          Container(
            height: 100,
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
                        'Dim Screen Share Video',
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
                Text('Automatically dim video when flashing images or visual pattern (such as stripes) are detected.',
                style: TextStyle(
                  color: subTitle,
                  fontSize: 10
                ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
