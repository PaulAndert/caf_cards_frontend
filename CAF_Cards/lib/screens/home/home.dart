import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/collection/collection.dart';
import 'package:myapp/screens/create/start/start.dart';
import 'package:myapp/screens/fight/start/start.dart';
import 'package:myapp/screens/trade/start/start.dart';
import 'package:myapp/services/helper_service.dart';
import 'package:myapp/services/user_service.dart';
import 'package:myapp/utils.dart';

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
            // Atom Logo Container
            Expanded(
              flex: 6,
              child: Image.asset(
                'assets/page-1/images/atomgood-1.png',
                fit: BoxFit.cover,
                width: 250 * fem,
                height: 250 * fem,
              ),
            ),
            Expanded(
              // Stats Tabelle
              flex: 6,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(20 * fem, 30 * fem, 20 * fem, 0 * fem),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Fights won:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fights won:',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                        Text(
                          '${user?.wins ?? "..."}',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                    // Fights lost:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fights lost:',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                        Text(
                          '${user?.losses ?? "..."}',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                    // Cards created:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cards created:',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                        Text(
                          '${user?.created ?? "..."}',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                    // Cards traded:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cards traded:',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                        Text(
                          '${user?.traded ?? "..."}',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                    // Cards collected:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cards collected:',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                        Text(
                          '${user?.collected ?? "..."}',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Device ID:',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                        Text(
                          '$deviceId',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),*/
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
