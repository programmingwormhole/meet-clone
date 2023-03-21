import 'package:flutter/material.dart';

import '../utils/config.dart';

void shareMeet(BuildContext context, double size) {
  showModalBottomSheet(
      backgroundColor: Colors.black,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 420,
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
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Container(
                    height: 320,
                    width: size * 8,
                    decoration: BoxDecoration(
                        color: title.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10, top: 5, bottom: 5, right: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: title.withOpacity(0.1),
                                      width: 0.2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Google Drive',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.add_to_drive_sharp,
                                    color: Colors.blueAccent,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: title.withOpacity(0.1),
                                      width: 0.2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Photo',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.photo_camera_back,
                                    color: title,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: title.withOpacity(0.1),
                                      width: 0.2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Document',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.file_open_outlined,
                                    color: title,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: title.withOpacity(0.1),
                                      width: 0.2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Web Link',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.link_rounded,
                                    color: title,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: title.withOpacity(0.1),
                                      width: 0.2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Bookmark',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.bookmark_outline,
                                    color: title,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom:
                                      BorderSide(color: title.withOpacity(0.1)),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Screen',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.screen_share,
                                    color: title,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: size,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: title.withOpacity(0.1),
                                      width: 0.2),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Camera',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.camera_alt_outlined,
                                    color: title,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: size,
                              child: Row(
                                children: [
                                  Text(
                                    'Share Whiteboard',
                                    style: TextStyle(color: title),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.developer_board_rounded,
                                    color: title,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: title,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
