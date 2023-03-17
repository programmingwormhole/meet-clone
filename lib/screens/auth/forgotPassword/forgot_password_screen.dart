import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/auth/login/login_screen.dart';

import '../../../utils/colors.dart';
import '../../../utils/responsive.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    void showcontent() {
      showDialog(
        context: context, barrierDismissible: false, // user must tap button!

        builder: (BuildContext context) {
          return Center(
              child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                border: Border.all(width: 3, color: title),
                color: background,
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none,
                    children: [
                      const Text(
                        'We just sent an email to your email address which you provided with a link to reset your password. Check your inbox and follow the instructions in the email.',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Positioned(
                        bottom: -95,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const LoginScreen()));
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: background,
                                border: Border.all(width: 3, color: title)),
                            child: const Center(
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 35,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ));
        },
      );
    }

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
          'Forgot Password',
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
              'VERIFY YOUR EMAIL',
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
                    return 'Please type valid email';
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
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
                    hintText: 'Please enter your email',
                    hintStyle: TextStyle(color: subTitle)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Please type a valid email to sent recovery email.',
                style: TextStyle(
                    color: subTitle,
                    fontSize: Responsive.isMobile(context) ? 13 : 18),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: showcontent,
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
