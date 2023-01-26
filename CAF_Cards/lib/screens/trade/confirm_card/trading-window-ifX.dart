import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class TradeConfirmCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // tradingwindowpFw (26:577)
        padding: EdgeInsets.fromLTRB(6*fem, 56*fem, 3*fem, 15*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group4fnM (103:1271)
              margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 16*fem),
              width: 382*fem,
              height: 66*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(15*fem),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // simulateswipingcarduptoofferit (106:1190)
                    left: 36.5*fem,
                    top: 21.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 308*fem,
                          height: 22*fem,
                          child: Text(
                            'Simulate swiping card up to offer it',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'SF Pro Display',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.1*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle74T7 (26:581)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 382*fem,
                        height: 66*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(15*fem),
                              border: Border.all(color: Color(0xffffffff)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group6GJH (103:1291)
              margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 10.14*fem, 71*fem),
              width: double.infinity,
              height: 576*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle38XV7 (103:1277)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 357*fem,
                        height: 576*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(29*fem),
                            color: Color(0xff47479d),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vector8strokeBpZ (103:1278)
                    left: 23*fem,
                    top: 378.0001220703*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 33*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-8-stroke-9Xb.png',
                          width: 33*fem,
                          height: 33*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vector8strokeEnq (103:1279)
                    left: 299.0002441406*fem,
                    top: 378.0001220703*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 33*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-8-stroke-o6M.png',
                          width: 33*fem,
                          height: 33*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vector8strokehgR (103:1280)
                    left: 23*fem,
                    top: 470.0001220703*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 33*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-8-stroke-sbj.png',
                          width: 33*fem,
                          height: 33*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // vector8strokex6Z (103:1281)
                    left: 299.0002441406*fem,
                    top: 470.0001220703*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 33*fem,
                        child: Image.asset(
                          'assets/page-1/images/vector-8-stroke-Fnd.png',
                          width: 33*fem,
                          height: 33*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // DHP (103:1296)
                    left: 271*fem,
                    top: 535.4998779297*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 26*fem,
                          height: 22*fem,
                          child: Text(
                            '2',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'SF Pro Display',
                              fontSize: 48*ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.4583333333*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group9dru (106:3864)
                    left: 293*fem,
                    top: 2.9999389648*fem,
                    child: Align(
                      child: SizedBox(
                        width: 66.86*fem,
                        height: 66.86*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-9-9ED.png',
                          width: 66.86*fem,
                          height: 66.86*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // UMj (103:1297)
                    left: 285*fem,
                    top: 22.4999389648*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 26*fem,
                          height: 22*fem,
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'SF Pro Display',
                              fontSize: 48*ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.4583333333*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // draw2cardswhenplayedhEV (103:1287)
                    left: 61.5*fem,
                    top: 429.5001220703*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 230*fem,
                          height: 22*fem,
                          child: Text(
                            'Draw 2 cards when played',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'SF Pro Display',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.1*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // topfdergieruLZ (103:1292)
                    left: 28*fem,
                    top: 22.4998779297*fem,
                    child: Align(
                      child: SizedBox(
                        width: 172*fem,
                        height: 22*fem,
                        child: Text(
                          'Jar of Greed',
                          style: SafeGoogleFont (
                            'SF Pro Display',
                            fontSize: 32*ffem,
                            fontWeight: FontWeight.w700,
                            height: 0.6875*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // anoldjarfullofancientcardsandt (103:1293)
                    left: 28*fem,
                    top: 280.5001220703*fem,
                    child: Align(
                      child: SizedBox(
                        width: 303*fem,
                        height: 44*fem,
                        child: Text(
                          'An old jar full of ancient cards and treasure.',
                          style: SafeGoogleFont (
                            'SF Pro Display',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.1*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // grafik4Avh (103:1295)
                    left: 28*fem,
                    top: 66*fem,
                    child: Align(
                      child: SizedBox(
                        width: 302*fem,
                        height: 202*fem,
                        child: Image.asset(
                          'assets/page-1/images/grafik-4-mMF.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group7qmw (106:3856)
                    left: 46.744140625*fem,
                    top: 520.1431884766*fem,
                    child: Align(
                      child: SizedBox(
                        width: 32.83*fem,
                        height: 46.36*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-7-FHf.png',
                          width: 32.83*fem,
                          height: 46.36*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // WNH (103:1285)
                    left: 15*fem,
                    top: 531.5001220703*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 26*fem,
                          height: 22*fem,
                          child: Text(
                            '0',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'SF Pro Display',
                              fontSize: 48*ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.4583333333*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group8Mth (106:3860)
                    left: 302*fem,
                    top: 521.9998779297*fem,
                    child: Align(
                      child: SizedBox(
                        width: 50*fem,
                        height: 50*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-8-BD7.png',
                          width: 50*fem,
                          height: 50*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group5bo3 (103:1272)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
              width: 382*fem,
              height: 52*fem,
              child: Stack(
                children: [
                  Positioned(
                    // buttongJh (I103:1273;291:233)
                    left: 47.5*fem,
                    top: 15*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 284*fem,
                          height: 22*fem,
                          child: Text(
                            'Simulate swiping card down to go back',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'SF Pro Text',
                              fontSize: 17*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2941176471*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle7gxu (103:1274)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 382*fem,
                        height: 52*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(15*fem),
                              border: Border.all(color: Color(0xffffffff)),
                            ),
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