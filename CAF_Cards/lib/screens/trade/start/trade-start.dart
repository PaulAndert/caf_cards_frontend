import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
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
                  Container(
                    // iconrowsNV (I16:796;10:2672;17:118)
                    padding: EdgeInsets.fromLTRB(17*fem, 1*fem, 18*fem, 0*fem),
                    width: double.infinity,
                    height: 53*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff202024),
                    ),
                    child: Container(
                      // autogrouptoyqMYZ (T1TQNaWhxDpPggTMCmtoYq)
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // frame5Tbb (I16:796;10:2672;17:119)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 43*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(4.17*fem, 4.17*fem, 4.13*fem, 4.17*fem),
                                height: double.infinity,
                                child: Align(
                                  // icons6Pf (I16:796;10:2672;17:120)
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    width: 27.71*fem,
                                    height: 27.71*fem,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.95*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/icons-mc9.png',
                                        width: 27.71*fem,
                                        height: 27.71*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // frame6wfB (I16:796;10:2672;17:122)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 43*fem, 0*fem),
                            height: 49.01*fem,
                            child: Align(
                              // iconographycaesarzkn4Uu (I16:796;10:2672;17:123)
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                width: 30*fem,
                                height: 29.86*fem,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19.14*fem),
                                  child: Image.asset(
                                    'assets/page-1/images/iconography-caesarzkn-kJ9.png',
                                    width: 30*fem,
                                    height: 29.86*fem,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // frame7tiq (I16:796;10:2672;17:125)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(3.05*fem, 1.5*fem, 3*fem, 1.5*fem),
                                height: double.infinity,
                                child: Align(
                                  // iconographycaesarzknM6d (I16:796;10:2672;17:126)
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    width: 29.95*fem,
                                    height: 31.5*fem,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17.5*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/iconography-caesarzkn-SpD.png',
                                        width: 29.95*fem,
                                        height: 31.5*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // frame9oDX (I16:796;10:2672;17:138)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(3.38*fem, 3.41*fem, 3.38*fem, 3.41*fem),
                                height: double.infinity,
                                child: Align(
                                  // iconsejw (I16:796;10:2672;17:139)
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    width: 29.25*fem,
                                    height: 29.25*fem,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.94*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/icons-Znd.png',
                                        width: 29.25*fem,
                                        height: 29.25*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            // frame8iE1 (I16:796;10:2672;17:128)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3.33*fem, 3.6*fem, 3.33*fem, 3.6*fem),
                              height: double.infinity,
                              child: Align(
                                // iconszxD (I16:796;10:2672;17:129)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 29.34*fem,
                                  height: 28.8*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/icons-wBB.png',
                                      width: 29.34*fem,
                                      height: 28.8*fem,
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