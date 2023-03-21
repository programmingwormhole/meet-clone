import 'package:flutter/material.dart';
import 'package:zoom_ui/screens/auth/signup/email_screen.dart';
import 'package:zoom_ui/utils/config.dart';
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
          'Sign Up',
          style: TextStyle(
              color: title, fontWeight: FontWeight.w500, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Text(
              'ENTER YOUR FULL NAME',
              style: TextStyle(color: title, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                    color: title, width: 0.6
                ),
                bottom: BorderSide(
                    color: title, width: 0.6
                ),
              ),
              color: title.withOpacity(0.2),
            ),
            child: Center(
              child: Form(
                key: _formKey,
                child: TextFormField(
                  validator: (value) {
                    if (value == '') {
                      return 'Please enter your full name !';
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
                              width: 0,
                              color: Colors.transparent
                          )
                      ),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 0,
                              color: Colors.transparent
                          )
                      ),
                      hintText: 'Full Name',
                      hintStyle: TextStyle(color: subTitle)),
                ),
              ),
            ),
          ),

          Padding(padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Enter your full name to know who are you !',
                    style: TextStyle(
                        color: subTitle,
                        fontSize: Responsive.isMobile(context) ? 13 : 18),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    if(_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const EmailScreen()));
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
            ),)
        ],
      ),
    );
  }
}
