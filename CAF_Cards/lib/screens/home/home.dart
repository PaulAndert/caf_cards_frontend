import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/collection/collection.dart';
import 'package:myapp/screens/create/start/create-start.dart';
import 'package:myapp/screens/fight/start/fight-start.dart';
import 'package:myapp/screens/trade/start/trade-start.dart';
import 'package:myapp/services/helper_service.dart';
import 'package:myapp/services/user_service.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/navbar.dart';

import '../../models/user.dart';

class Home extends StatefulWidget {
  @override
  static const String routeName = "/Home";
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? deviceId;
  User? user;
  var deviceIdLoaded = false;
  var userLoaded = false;

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
        getUser(deviceId);
      });
    }
  }

  getUser(deviceId) async {
    user = await UserService().getUserByDeviceId(deviceId);

    user ??= await UserService().postUser(User(
        id: 0,
        deviceId: deviceId,
        wins: 0,
        losses: 0,
        created: 0,
        traded: 0,
        collected: 0,
        cardIds: []));
    if (user != null) {
      setState(() {
        userLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      width: double.infinity,
      child: Container(
        // homeksP (10:10933)
        padding: EdgeInsets.fromLTRB(9 * fem, 57 * fem, 9 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // Atom Logo
              margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 22 * fem),
              width: 250 * fem,
              height: 250 * fem,
              child: Image.asset(
                'assets/page-1/images/atomgood-1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // Stats Tabelle
              margin:
                  EdgeInsets.fromLTRB(32 * fem, 0 * fem, 32 * fem, 130 * fem),
              width: double.infinity,
              height: 296 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // The text is in a stack to overlay the commented lines over the text
                    // stack is used for that -> overlay children over each other
                    left: 6 * fem, // padding
                    top: 0 * fem, // padding
                    child: Align(
                      child: SizedBox(
                        width: 293 * fem, // breite der text box
                        height: 177 * fem, // höhe der text box
                        child: Text(
                          'Fights won:                    ${user?.wins}\n'
                          'Fights lost:                      ${user?.losses}\n'
                          'Cards created:              ${user?.created}\n'
                          'Cards traded:              ${user?.traded}\n'
                          'Cards collected:          ${user?.collected}',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  /*Positioned(
                    // Container mit den Lines drinnen
                    left: 0 * fem,
                    top: 40 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          1 * fem, 65 * fem, 0 * fem, 67 * fem),
                      width: 311 * fem,
                      height: 266 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // line2ZkH (103:1209)
                            width: double.infinity,
                            height: 2 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                          ),
                          SizedBox(
                            height: 64 * fem,
                          ),
                          Container(
                            // line34h3 (103:1210)
                            width: double.infinity,
                            height: 2 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                          ),
                          SizedBox(
                            height: 64 * fem,
                          ),
                          Container(
                            // line4ZNu (103:1211)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 1 * fem),
                            width: double.infinity,
                            height: 2 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),*/
                ],
              ),
            ),
            /*Container(
              // tabbarios5tabshandwritingefF (10:11001)
              width: double.infinity,
              height: 87 * fem,
              decoration: BoxDecoration(
                color: Color(0xff755b5b),
              ),
              child: Container(
                // tabbarios5tabssf9ru (I10:11001;10:2672)
                width: double.infinity,
                height: double.infinity,
                /*child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Navbar(fem: fem),
                    Container(
                      // ioshomeindicatorsfr8M (I10:11001;10:2672;17:132)
                      padding: EdgeInsets.fromLTRB(
                          121 * fem, 21 * fem, 120 * fem, 13 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff202024),
                      ),
                      // The Home button bottom line
                      /*child: Center(
                        // homeindicatorLJR (I10:11001;10:2672;17:132;2:2)
                        child: SizedBox(
                          width: double.infinity,
                          height: 5 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100 * fem),
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),*/
                    ),
                  ],
                ),*/
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
