import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/auth/signup/password_screen.dart';
import 'package:zoom_ui/utils/colors.dart';
import 'package:zoom_ui/utils/responsive.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
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
              'ENTER YOUR EMAIL',
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
                    return 'Please enter e-mail address!';
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
                    hintText: 'E-mail Address',
                    hintStyle: TextStyle(color: subTitle)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Maybe you have to verify this email !',
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
                      context, MaterialPageRoute(builder: (_) => const PasswordScreen()));
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
