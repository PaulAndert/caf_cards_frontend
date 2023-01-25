import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/navbar.dart';

class TradeStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // tradestartfAd (16:795)
        padding: EdgeInsets.fromLTRB(9*fem, 79*fem, 9*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // startatradetZB (16:801)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 22*fem),
              child: Text(
                'Start a trade',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'SF Pro Display',
                  fontSize: 64*ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2575*ffem/fem,
                  letterSpacing: -0.2399999946*fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // letafriendscanthisqrcodeorscan (16:800)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 77*fem),
              constraints: BoxConstraints (
                maxWidth: 305*fem,
              ),
              child: Text(
                'Let a friend scan this QR-code or scan a code yourself by clicking the button',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'SF Pro Display',
                  fontSize: 20*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2575*ffem/fem,
                  letterSpacing: -0.2399999946*fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // autogroupxofkK2D (T1TQ3b4MFbYkQYvxiiXofK)
              margin: EdgeInsets.fromLTRB(38*fem, 0*fem, 36*fem, 62*fem),
              width: double.infinity,
              height: 300*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle3bEd (16:798)
                    left: 0*fem,
                    top: 0*fem,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 300*fem,
                        height: 300*fem,
                        decoration: BoxDecoration (
                          border: Border.all(color: Color(0xff212121)),
                        ),
                        child: Center(
                          // rectangle2RzM (I16:798;10:11775)
                          child: SizedBox(
                            width: double.infinity,
                            height: 300*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff212121)),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // qr11KZw (103:1253)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 301*fem,
                        height: 300*fem,
                        child: Image.asset(
                          'assets/page-1/images/qr1-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // buttonsprimeryc3F (16:797)
              margin: EdgeInsets.fromLTRB(106*fem, 0*fem, 105*fem, 43*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 50*fem,
                  decoration: BoxDecoration (
                    color: Color(0xff000080),
                    borderRadius: BorderRadius.circular(12*fem),
                  ),
                  child: Center(
                    child: Center(
                      child: Text(
                        'Scan  QR-Code',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'SF Pro Display',
                          fontSize: 17*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2941176471*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // tabbarios5tabssfxFX (I16:796;10:2672)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Navbar(fem: fem),
                  Container(
                    // ioshomeindicatorsfFNM (I16:796;10:2672;17:132)
                    padding: EdgeInsets.fromLTRB(121*fem, 21*fem, 120*fem, 8*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff202024),
                    ),
                    child: Center(
                      // homeindicatorkK7 (I16:796;10:2672;17:132;2:2)
                      child: SizedBox(
                        width: double.infinity,
                        height: 5*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(100*fem),
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}