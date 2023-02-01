import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/navbar.dart';

import '../../models/ScreenArguments.dart';
import '../../widgets/card_fullscreen_widget.dart';

class Details extends StatelessWidget {
  static const String routeName = "/Details";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios,
                        color: Color(0xffffffff)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit, color: Color(0xffffffff)),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: card_fullscreen_widget(fem: fem, ffem: ffem, args: args),
            ),
            Expanded(flex: 3, child: Container()),
          ],
        ),
      ),
    );
  }
}
