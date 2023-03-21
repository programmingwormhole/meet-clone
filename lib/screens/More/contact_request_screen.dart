import 'package:flutter/material.dart';
import 'package:zoom_ui/utils/config.dart';

class ContactRequestScreen extends StatelessWidget {
  const ContactRequestScreen({Key? key}) : super(key: key);

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
        title: const Text('Contact Requests'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'All contact requests will show up here',
          style: TextStyle(color: subTitle),
        ),
      ),
    );
  }
}
