import 'package:flutter/material.dart';

import '../utils/colors.dart';

void askToMute(BuildContext context, double size) {
  showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 150,
          width: size,
          decoration: BoxDecoration(
            color: title.withOpacity(0.1),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                          color: title.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Ask All To Mute',
                                style: TextStyle(
                                    color: title,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.mic_outlined,
                                color: title,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      height: 40,
                      child: Center(
                        child: Text('Cancel',
                        style: TextStyle(
                          color: title
                        ),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
