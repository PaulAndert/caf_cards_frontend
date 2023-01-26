import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'package:qr_flutter/qr_flutter.dart';

class TradeStart extends StatelessWidget {
  const TradeStart({super.key});
  static const String routeName = "/TradeStart";
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TradeStartWidget(),
    );
  }
}

class TradeStartWidget extends StatefulWidget {
  const TradeStartWidget({super.key});

  @override
  State<TradeStartWidget> createState() => _TradeStartWidget();
}

class _TradeStartWidget extends State<TradeStartWidget> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: Container(
        width: double.infinity,
        child: Container(
          // tradestartfAd (16:795)
          padding: EdgeInsets.fromLTRB(9 * fem, 79 * fem, 9 * fem, 0 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff202024),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // Heading
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8 * fem, 22 * fem),
                child: Text(
                  'Start a trade',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'SF Pro Display',
                    fontSize: 64 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2575 * ffem / fem,
                    letterSpacing: -0.2399999946 * fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                // Text BOX
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 77 * fem),
                constraints: BoxConstraints(
                  maxWidth: 305 * fem,
                ),
                child: Text(
                  'Let a friend scan this QR-code or scan a code yourself by clicking the button',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'SF Pro Display',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2575 * ffem / fem,
                    letterSpacing: -0.2399999946 * fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                // QR Code generation
                margin:
                    EdgeInsets.fromLTRB(38 * fem, 0 * fem, 36 * fem, 62 * fem),
                width: double.infinity,
                height: 300 * fem,
                child: Center(
                    child: QrImage(
                        data: 'this is different data',
                        size: 300,
                        backgroundColor: Colors.white)),
              ),
              Container(
                // Scan QR Code Button
                margin: EdgeInsets.fromLTRB(
                    106 * fem, 0 * fem, 105 * fem, 43 * fem),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 49 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff000080),
                      borderRadius: BorderRadius.circular(12 * fem),
                    ),
                    child: Center(
                      child: Center(
                        child: Text(
                          'Scan  QR-Code',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 17 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2941176471 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
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
