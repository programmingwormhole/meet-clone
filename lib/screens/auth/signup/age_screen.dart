import 'package:flutter/material.dart';
import 'package:zoom_ui/utils/colors.dart';
import 'package:zoom_ui/utils/responsive.dart';
import 'full_name_screen.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({Key? key}) : super(key: key);

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
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
              'VERIFY YOUR AGE',
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
              border: const Border(
                top: BorderSide(
                  color: Colors.white, width: 0.6
                ),
                bottom: BorderSide(
                    color: Colors.white, width: 0.6
                ),
              ),
              color: title.withOpacity(0.2),
            ),
            child: Center(
              child: Form(
                key: _formKey,
                child: TextFormField(
                  validator: (value) {
                    if (value?.length != 4) {
                      return 'Please type valid age';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
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
                      hintText: 'Birth Year',
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
                  'Please confirm your birth year. This data will not be stored',
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
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const FullNameScreen()));
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
