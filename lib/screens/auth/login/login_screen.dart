import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/home_screen.dart';

import '../../../utils/config.dart';
import '../forgotPassword/forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _newKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_outlined),
        ),
        title: Text(
          'Sign In',
          style: TextStyle(
              color: title, fontWeight: FontWeight.w500, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'VERIFY YOUR EMAIL ADDRESS',
                style: TextStyle(color: title, fontSize: 15),
              ),
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
                            hintText: 'E-mail address',
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
                            hintText: 'Password',
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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate() &&
                          _newKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const HomeScreen()));
                      }
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: background,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: title,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ForgotPasswordScreen()));
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: background, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'OTHERS SIGN IN METHODS',
                    style: TextStyle(color: subTitle),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: size * 0.9,
                          decoration: BoxDecoration(
                              color: title.withOpacity(0.1),
                              border: Border.all(
                                  color: title.withOpacity(0.5), width: 0.7),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/google.png',
                                  width: 20,
                                  color: title.withOpacity(0.5),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Continue With Google',
                                  style: TextStyle(
                                      color: title,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: size * 0.9,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: title.withOpacity(0.5), width: 0.7),
                              color: title.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/facebook.png',
                                  width: 20,
                                  color: title.withOpacity(0.5),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Continue With Facebook',
                                  style: TextStyle(
                                      color: title,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          width: size * 0.9,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: title.withOpacity(0.5), width: 0.7),
                              color: title.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/apple.png',
                                  width: 20,
                                  color: title.withOpacity(0.5),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Continue With Google',
                                  style: TextStyle(
                                      color: title,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
