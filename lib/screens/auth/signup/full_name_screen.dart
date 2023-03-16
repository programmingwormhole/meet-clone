import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/auth/signup/email_screen.dart';
import 'package:zoom_ui/utils/colors.dart';
import 'package:zoom_ui/utils/responsive.dart';

class FullNameScreen extends StatefulWidget {
  const FullNameScreen({Key? key}) : super(key: key);

  @override
  State<FullNameScreen> createState() => _FullNameScreenState();
}

class _FullNameScreenState extends State<FullNameScreen> {
  final _formKey = GlobalKey<FormState>();
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
          icon: const Icon(Icons.arrow_back_ios_outlined),
        ),
        title: Text(
          'Sign Up',
          style: TextStyle(
              color: title, fontWeight: FontWeight.w500, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'ENTER YOUR FULL NAME',
              style: TextStyle(color: title, fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                validator: (value) {
                  if (value == '') {
                    return 'Please enter your full name!';
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(color: title),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    errorStyle: TextStyle(color: subTitle),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: title),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: title,
                      ),
                    ),
                    filled: true,
                    fillColor: title.withOpacity(0.1),
                    hintText: 'Full Name',
                    hintStyle: TextStyle(color: subTitle)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Enter your full name to know who are you !',
                style: TextStyle(
                    color: subTitle,
                    fontSize: Responsive.isMobile(context) ? 15 : 18),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const EmailScreen()));
                }
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: title.withOpacity(0.1),
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
