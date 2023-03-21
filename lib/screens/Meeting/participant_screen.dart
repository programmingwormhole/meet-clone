import 'package:flutter/material.dart';
import 'package:zoom_ui/component/ask_all_to_mute.dart';
import 'package:zoom_ui/component/participant_mute_all.dart';
import 'package:zoom_ui/data/participant.dart';
import 'package:zoom_ui/utils/config.dart';

import '../../component/participant_invite.dart';

class Participant extends StatefulWidget {
  const Participant({Key? key}) : super(key: key);

  @override
  State<Participant> createState() => _ParticipantState();
}

class _ParticipantState extends State<Participant> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close)),
        title: const Text('Participant (4)'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            primary: true,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 50,
                width: size,
                decoration: BoxDecoration(
                  color: title.withOpacity(0.1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            participantList[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        participantList[index]['name'],
                        style: TextStyle(
                            color: title,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      participantList[index]['host']
                          ? Text(
                              '(host, me)',
                              style: TextStyle(
                                  color: subTitle,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10),
                            )
                          : const Text(''),
                      const Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.mic_off,
                            color: title,
                          ),
                          const Icon(
                            Icons.videocam_off,
                            color: Colors.red,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        width: size,
        color: title.withOpacity(0.1),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  participantInvite(context, size);
                },
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: title.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Center(
                      child: Text(
                        'Invite',
                        style: TextStyle(
                          color: title,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  participantMuteAll(context, size);
                },
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: title.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Center(
                      child: Text(
                        'Mute All',
                        style: TextStyle(
                          color: title,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  askToMute(context, size);
                },
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                      color: title.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Center(
                      child: Icon(
                        Icons.more_horiz_outlined,
                        color: title,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
