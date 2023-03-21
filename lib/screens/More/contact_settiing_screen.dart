import 'package:flutter/material.dart';
import 'package:zoom_ui/utils/config.dart';

import 'contact_request_screen.dart';

class ContactSettingScreen extends StatefulWidget {
  const ContactSettingScreen({Key? key}) : super(key: key);

  @override
  State<ContactSettingScreen> createState() => _ContactSettingScreenState();
}

class _ContactSettingScreenState extends State<ContactSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_outlined)),
      ),
      body: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: title.withOpacity(0.1),
            border: Border(
                top: BorderSide(
                  color: title.withOpacity(0.1),
                ),
                bottom: BorderSide(
                  color: title.withOpacity(0.1),
                ))),
        child: Center(
          child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const ContactRequestScreen()));
                },
                child: ListTile(
                  title: Text(
                    'Contact Requests',
                    style: TextStyle(color: title),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: title,
                      )),
                ),
              )),
        ),
      ),
    );
  }
}
