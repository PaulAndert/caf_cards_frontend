import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/navbar.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../services/helper_service.dart';
import '../qr_code/fight-scan-code.dart';

class FightStart extends StatefulWidget {
  static const String routeName = "/FightStart";

  @override
  State<FightStart> createState() => _FightStartState();
}

class _FightStartState extends State<FightStart> {
  String? deviceId;

  var deviceIdLoaded = false;

  @override
  void initState() {
    super.initState();
    getDeviceId();
  }

  getDeviceId() async {
    deviceId = await HelperService().getUserId();
    if (deviceId != null) {
      setState(() {
        deviceIdLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Material(
      child: Container(
        // Create a container where everything else is located
        padding: EdgeInsets.fromLTRB(9 * fem, 79 * fem, 9 * fem, 0 * fem),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Heading
            Expanded(
              flex: 2,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/FightBoard');
                },
                child: Text(
                  'Start a fight',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'SF Pro Display',
                    fontSize: 60 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2575 * ffem / fem,
                    letterSpacing: -0.2399999946 * fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                'Let a friend scan this QR-code or scan a code yourself by clicking the button',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'SF Pro Display',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2575 * ffem / fem,
                  letterSpacing: -0.2399999946 * fem,
                  color: const Color(0xffffffff),
                ),
              ),
            ),
            // QR Code generation
            Expanded(
              flex: 5,
              child: Center(
                child: QrImage(
                    data: deviceId ?? "dummy",
                    size: 300,
                    backgroundColor: Colors.white),
              ),
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: ElevatedButton(
                  onPressed: /**/ () {
                    //Navigator.pushNamed(context, '/TradeQR');
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FightQR(),
                    ));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.deepPurpleAccent,
                  ),
                  child: Container(
                    width: 200 * fem,
                    height: 50 * fem,
                    child: Center(
                      child: Text(
                        'Scan  QR-Code',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: 25 * ffem,
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
    );
  }
}
