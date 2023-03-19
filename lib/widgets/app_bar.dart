import 'package:flutter/material.dart';

import '../component/home_screen_info_button.dart';
import '../utils/colors.dart';
import '../utils/responsive.dart';

PreferredSizeWidget appBar(BuildContext context, double size) {
  return Responsive.isDesktop(context)
      ? AppBar(
          backgroundColor: black,
          automaticallyImplyLeading: false,
        )
      : AppBar(
          backgroundColor: black,
          automaticallyImplyLeading: false,
          title: const Text('Meetings'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  meetingInfo(context, size);
                },
                icon: const Icon(Icons.info_outline))
          ],
        );
}
