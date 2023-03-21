import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/TeamChat/success_invite.dart';

import '../../utils/colors.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  final TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close),
        ),
        title: Text(
          'Invite to Zoom',
          style: TextStyle(color: title),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: title, width: 0.2),
                  bottom: BorderSide(color: title, width: 0.2),
                ),
                color: title.withOpacity(0.2),
              ),
              child: Center(
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _controller,
                    validator: (value) {
                      if (value == '') {
                        return 'Please enter valid email address !';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
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
                        hintText: 'Enter Email Address',
                        hintStyle: TextStyle(color: subTitle)),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'If this user accepts your request, your profile information (including your status) will be visible to this contact. You can also meet and chat with this contact.',
                  style: TextStyle(color: subTitle),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SuccessInviteScreen(_controller.text)));
                }
              },
              child: Container(
                height: 50,
                width: size * .9,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        color: title,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
