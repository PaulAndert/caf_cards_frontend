import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/collection/collection.dart';
import 'package:myapp/screens/create/start/create-start.dart';
import 'package:myapp/screens/fight/start/fight-start.dart';
import 'package:myapp/screens/trade/start/trade-start.dart';
import 'package:myapp/utils.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // homeksP (10:10933)
        padding: EdgeInsets.fromLTRB(9*fem, 57*fem, 9*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // atomgood1dAV (101:1203)
              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 22*fem),
              width: 250*fem,
              height: 250*fem,
              child: Image.asset(
                'assets/page-1/images/atomgood-1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // autogroupezczhRF (T1TRRTvvPfYQQUTM3XEZCZ)
              margin: EdgeInsets.fromLTRB(32*fem, 0*fem, 32*fem, 130*fem),
              width: double.infinity,
              height: 306*fem,
              child: Stack(
                children: [
                  Positioned(
                    // fightswon35fightslost4cardscre (103:1203)
                    left: 6*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 293*fem,
                        height: 177*fem,
                        child: Text(
                          'Fights won:                       35\nFights lost:                           4\nCards created:                 14\nCards traded:                  56\nCards collected:              91',
                          style: SafeGoogleFont (
                            'SF Pro Display',
                            fontSize: 28*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group1XYh (103:1213)
                    left: 0*fem,
                    top: 40*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(1*fem, 65*fem, 0*fem, 67*fem),
                      width: 311*fem,
                      height: 266*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // line2ZkH (103:1209)
                            width: double.infinity,
                            height: 2*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                            ),
                          ),
                          SizedBox(
                            height: 64*fem,
                          ),
                          Container(
                            // line34h3 (103:1210)
                            width: double.infinity,
                            height: 2*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                            ),
                          ),
                          SizedBox(
                            height: 64*fem,
                          ),
                          Container(
                            // line4ZNu (103:1211)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                            width: double.infinity,
                            height: 2*fem,
                            decoration: BoxDecoration (
                              color: Color(0xffffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // tabbarios5tabshandwritingefF (10:11001)
              width: double.infinity,
              height: 87*fem,
              decoration: BoxDecoration (
                color: Color(0xff755b5b),
              ),
              child: Container(
                // tabbarios5tabssf9ru (I10:11001;10:2672)
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconrow4ys (I10:11001;10:2672;17:118)
                      padding: EdgeInsets.fromLTRB(17*fem, 1*fem, 18*fem, 0*fem),
                      width: double.infinity,
                      height: 53*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff202024),
                      ),
                      child: Container(
                        // autogroup1s6mMi5 (T1TRtsJvkdwzcJTBmY1s6m)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // frame5ex5 (I10:11001;10:2672;17:119)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(4.17*fem, 4.17*fem, 4.12*fem, 4.17*fem),
                                  height: double.infinity,
                                  child: Align(
                                    // iconsGyT (I10:11001;10:2672;17:120)
                                    alignment: Alignment.topCenter,
                                    child: SizedBox(
                                      width: 27.71*fem,
                                      height: 27.71*fem,
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.95*fem),
                                        child: IconButton(
                                            icon: Image.asset(
                                              'assets/page-1/images/icons-Ns7.png',
                                            ),
                                          iconSize: 20,
                                          color: Colors.white,
                                          // Within the `FirstRoute` widget
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => FightStart()),
                                            );
                                          }
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // frame6vYD (I10:11001;10:2672;17:122)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 43.05*fem, 0*fem),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(3*fem, 2.99*fem, 3*fem, 2.99*fem),
                                  height: double.infinity,
                                  child: Align(
                                    // iconographycaesarzknymP (I10:11001;10:2672;17:123)
                                    alignment: Alignment.topCenter,
                                    child: SizedBox(
                                      width: 30*fem,
                                      height: 29.86*fem,
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16.15*fem),
                                        child: ElevatedButton(
                                            child: Image.asset(
                                              'assets/page-1/images/iconography-caesarzkn-Sah.png',
                                              width: 30*fem,
                                              height: 29.86*fem,
                                            ),
                                            // Within the `FirstRoute` widget
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => TradeStart()),
                                              );
                                            }
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // frame7ExD (I10:11001;10:2672;17:125)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 43*fem, 0*fem),
                              height: 50.5*fem,
                              child: Align(
                                // iconographycaesarzknkvZ (I10:11001;10:2672;17:126)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 29.95*fem,
                                  height: 31.5*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/iconography-caesarzkn-YKF.png',
                                      width: 29.95*fem,
                                      height: 31.5*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // frame9p9j (I10:11001;10:2672;17:138)
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
                                    // iconsTCh (I10:11001;10:2672;17:139)
                                    alignment: Alignment.topCenter,
                                    child: SizedBox(
                                      width: 29.25*fem,
                                      height: 29.25*fem,
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.94*fem),
                                        child: ElevatedButton(
                                            child: Image.asset(
                                              'assets/page-1/images/icons-RqP.png',
                                              width: 29.25*fem,
                                              height: 29.25*fem,
                                            ),
                                          // Within the `FirstRoute` widget
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => CreateStart()),
                                            );
                                          }
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              // frame8i8d (I10:11001;10:2672;17:128)
                              onPressed: () {},
                              style: TextButton.styleFrom (
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(3.33*fem, 3.6*fem, 3.33*fem, 3.6*fem),
                                height: double.infinity,
                                child: Align(
                                  // iconsQn9 (I10:11001;10:2672;17:129)
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    width: 29.34*fem,
                                    height: 28.8*fem,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                      child: ElevatedButton(
                                          child: Image.asset(
                                            'assets/page-1/images/icons-1kZ.png',
                                            width: 29.34*fem,
                                            height: 28.8*fem,
                                          ),
                                        // Within the `FirstRoute` widget
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Collection()),
                                          );
                                        }
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
                      // ioshomeindicatorsfr8M (I10:11001;10:2672;17:132)
                      padding: EdgeInsets.fromLTRB(121*fem, 21*fem, 120*fem, 8*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xff202024),
                      ),
                      child: Center(
                        // homeindicatorLJR (I10:11001;10:2672;17:132;2:2)
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
            ),
          ],
        ),
      ),
          );
  }
}