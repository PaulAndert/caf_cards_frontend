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
        // fightstartsBj (10:10934)
        padding: EdgeInsets.fromLTRB(9*fem, 79*fem, 9*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // startafightiy3 (16:739)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 22*fem),
              child: Text(
                'Start a fight',
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
              // letafriendscanthisqrcodeorscan (16:738)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 37*fem),
              constraints: BoxConstraints (
                maxWidth: 293*fem,
              ),
              child: Text(
                'Let a friend scan this QR-code or scan a code yourself by clicking the button',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'SF Pro Display',
                  fontSize: 24*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2575*ffem/fem,
                  letterSpacing: -0.2399999946*fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // autogroupbtxbvxd (T1TNfNrzyh6N2ydGhjbTXb)
              margin: EdgeInsets.fromLTRB(38*fem, 0*fem, 36*fem, 62*fem),
              width: double.infinity,
              height: 300*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle3Dwj (10:12258)
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
                          // rectangle26Eq (I10:12258;10:11775)
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
                    // qr11AVb (103:1215)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 301*fem,
                        height: 300*fem,
                        child: Image.asset(
                          'assets/page-1/images/qr1-1-Lz1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // buttonsprimerydty (10:12253)
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
              // tabbarios5tabssfNk5 (I10:11046;10:2672)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // iconrowH6M (I10:11046;10:2672;17:118)
                    padding: EdgeInsets.fromLTRB(21.17*fem, 1*fem, 18*fem, 0*fem),
                    width: double.infinity,
                    height: 53*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff202024),
                    ),
                    child: Container(
                      // autogroupjrmwxyB (T1TP3hZ92fyK3cxi7ZJRMw)
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // frame5Giy (I10:11046;10:2672;17:119)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44.13*fem, 0*fem),
                            height: 47.83*fem,
                            child: Align(
                              // iconsnBX (I10:11046;10:2672;17:120)
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                width: 27.71*fem,
                                height: 27.71*fem,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20.12*fem),
                                  child: Image.asset(
                                    'assets/page-1/images/icons-Ccu.png',
                                    width: 27.71*fem,
                                    height: 27.71*fem,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // frame6CW9 (I10:11046;10:2672;17:122)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(3*fem, 2.99*fem, 3*fem, 2.99*fem),
                                height: double.infinity,
                                child: Align(
                                  // iconographycaesarzknqp1 (I10:11046;10:2672;17:123)
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    width: 30*fem,
                                    height: 29.86*fem,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16.15*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/iconography-caesarzkn-Gff.png',
                                        width: 30*fem,
                                        height: 29.86*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // frame7GuK (I10:11046;10:2672;17:125)
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
                                  // iconographycaesarzknviy (I10:11046;10:2672;17:126)
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    width: 29.95*fem,
                                    height: 31.5*fem,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17.5*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/iconography-caesarzkn-6o7.png',
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
                            // frame9mUh (I10:11046;10:2672;17:138)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(3.38*fem, 3.4*fem, 3.38*fem, 3.4*fem),
                                height: double.infinity,
                                child: Align(
                                  // iconsBHX (I10:11046;10:2672;17:139)
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    width: 29.25*fem,
                                    height: 29.25*fem,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.94*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/icons-bx9.png',
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
                            // frame8VBj (I10:11046;10:2672;17:128)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3.33*fem, 3.6*fem, 3.33*fem, 3.6*fem),
                              height: double.infinity,
                              child: Align(
                                // iconsPRX (I10:11046;10:2672;17:129)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 29.34*fem,
                                  height: 28.8*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/icons-kMT.png',
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
                    // ioshomeindicatorsf2Db (I10:11046;10:2672;17:132)
                    padding: EdgeInsets.fromLTRB(121*fem, 21*fem, 120*fem, 8*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff202024),
                    ),
                    child: Center(
                      // homeindicatorv45 (I10:11046;10:2672;17:132;2:2)
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