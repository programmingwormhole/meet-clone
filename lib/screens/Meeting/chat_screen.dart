import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:zoom_ui/utils/responsive.dart';
import '../../utils/colors.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Close',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Text(
              'Meeting Chat',
              style: TextStyle(color: title),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.blue,
              ),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ChatBubble(
                      clipper: ChatBubbleClipper4(type: BubbleType.sendBubble),
                      backGroundColor: const Color(0xffE7E7ED),
                      margin: const EdgeInsets.only(top: 20),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        child: const Text(
                          "Hello! Anyone know how to buy this source code?",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Robert',
                      style: TextStyle(color: subTitle, fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://img.freepik.com/free-photo/man-with-headset-video-call_23-2148854889.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://media.istockphoto.com/id/1270851164/photo/head-shot-portrait-smiling-african-american-man-making-video-call.jpg?s=612x612&w=0&k=20&c=C9F-ffqXQ5H0eYoYinI6qwRTah9yJ4Qz-GWX7GurXjg=',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Jeff Remi',
                      style: TextStyle(color: subTitle, fontSize: 10),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ChatBubble(
                      clipper:
                          ChatBubbleClipper4(type: BubbleType.receiverBubble),
                      backGroundColor: const Color(0xffE7E7ED),
                      margin: const EdgeInsets.only(top: 20),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.7,
                        ),
                        child: const Text(
                          "Yes! Just go to codecanyon.net and Programming Warmhole has been Uploaded This Source code item name called Poom - Video Conference App UI.",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 120,
            width: size,
            decoration: BoxDecoration(
              color: title.withOpacity(0.1),
              border: Border(top: BorderSide(color: title.withOpacity(0.2))),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Send to: Everyone',
                    style: TextStyle(
                      color: title,
                    ),
                  ),
                  Responsive.isDesktop(context)
                  ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: title.withOpacity(0.5),
                          )),
                      Container(
                        height: 40,
                        width: size * .9,
                        decoration: BoxDecoration(
                          color: title.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: title.withOpacity(0.1),
                            width: 1.2,
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: 'Tap here to chat',
                              hintStyle:
                              TextStyle(color: title.withOpacity(0.5))),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send_outlined,
                            color: title.withOpacity(0.5),
                          ))
                    ],
                  )
                  : Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: title.withOpacity(0.5),
                          )),
                      Container(
                        height: 40,
                        width: size * .7,
                        decoration: BoxDecoration(
                          color: title.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: title.withOpacity(0.1),
                            width: 1.2,
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: 'Tap here to chat',
                              hintStyle:
                                  TextStyle(color: title.withOpacity(0.5))),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send_outlined,
                            color: title.withOpacity(0.5),
                          ))
                    ],
                  ),
                  Center(
                      child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: title,
                              title: const Text('Who can see your message?'),
                              content: const Text(
                                  'Everyone in the meeting can see and save your message with Everyone - and can share them with apps and others.'),
                              actions: [
                                Center(
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Ok',
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 20),
                                      )),
                                )
                              ],
                            );
                          });
                    },
                    child: Text(
                      'Who can see your message?',
                      style: TextStyle(color: title.withOpacity(0.5)),
                    ),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
