import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zoom_ui/screens/welcome_screen.dart';
import 'package:zoom_ui/utils/config.dart';

class OnBoardThree extends StatelessWidget {
  const OnBoardThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Lottie.asset(
                'assets/json/onBoard_3.json',
                width: 300,
              ),
              // Image.asset('assets/images/couple-video-call-with-phone-free-vector.jpg', width: 250,),
              Column(
                children: [
                  Text(
                    'Chat',
                    style: TextStyle(
                        color: title,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Stay connected with your friends!',
                    style: TextStyle(
                        color: title.withOpacity(0.5),
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 18,
                          width: 5,
                          decoration: BoxDecoration(
                            color: title.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 18,
                          width: 5,
                          decoration: BoxDecoration(
                            color: title.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 5,
                          decoration: BoxDecoration(
                            color: title,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const WelcomeScreen()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: title.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: title,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
