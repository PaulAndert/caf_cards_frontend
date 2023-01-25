import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/navbar.dart';

class CreatePoints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // createpointsLzH (10:10943)
        padding: EdgeInsets.fromLTRB(9*fem, 42*fem, 9*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupb8mkmZo (T1SyrCYQwsjtUSuH9wb8MK)
              margin: EdgeInsets.fromLTRB(21*fem, 0*fem, 50.5*fem, 21*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // iconographycaesarzkne7o (26:995)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 201.5*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 32*fem,
                        height: 32*fem,
                        child: Image.asset(
                          'assets/page-1/images/iconography-caesarzkn-p7w.png',
                          width: 32*fem,
                          height: 32*fem,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    // 39w (26:2330)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.5*fem),
                      child: Text(
                        '7/10',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'SF Pro Display',
                          fontSize: 36*ffem,
                          fontWeight: FontWeight.w700,
                          height: 0.6111111111*ffem/fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group6gCu (111:1601)
              margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 6.14*fem, 22*fem),
              width: double.infinity,
              height: 576*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle38XjK (111:1602)
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
                    // group9nQM (111:1609)
                    left: 292.9998779297*fem,
                    top: 3*fem,
                    child: Align(
                      child: SizedBox(
                        width: 66.86*fem,
                        height: 66.86*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-9-q1X.png',
                          width: 66.86*fem,
                          height: 66.86*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // En9 (111:1613)
                    left: 285*fem,
                    top: 22.4998779297*fem,
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
                    // chooseabilityStD (111:1614)
                    left: 115.5*fem,
                    top: 407.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 123*fem,
                          height: 22*fem,
                          child: Text(
                            'choose ability',
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
                    // topfdergierToK (111:1615)
                    left: 28*fem,
                    top: 22.4998779297*fem,
                    child: Align(
                      child: SizedBox(
                        width: 89*fem,
                        height: 22*fem,
                        child: Text(
                          'Wall-E',
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
                    // asmallrobotthatlovestocleanuQR (111:1616)
                    left: 28*fem,
                    top: 291.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 287*fem,
                        height: 22*fem,
                        child: Text(
                          'A small robot that loves to clean.',
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
                    // grafik4YTP (111:1617)
                    left: 28*fem,
                    top: 66*fem,
                    child: Align(
                      child: SizedBox(
                        width: 302*fem,
                        height: 202*fem,
                        child: Image.asset(
                          'assets/page-1/images/grafik-4-TCZ.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group15R1P (111:1637)
                    left: 45*fem,
                    top: 523.1428222656*fem,
                    child: Container(
                      width: 64.58*fem,
                      height: 46.36*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            // rMb (111:1623)
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.74*fem, 1.65*fem),
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
                          Container(
                            // group7ht1 (111:1618)
                            width: 32.83*fem,
                            height: 46.36*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-7-V9f.png',
                              width: 32.83*fem,
                              height: 46.36*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group14C45 (111:1636)
                    left: 248*fem,
                    top: 522*fem,
                    child: Container(
                      width: 81*fem,
                      height: 50*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            // gE9 (111:1608)
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1*fem),
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
                          Container(
                            // group8Yn9 (111:1624)
                            width: 50*fem,
                            height: 50*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-8-m7K.png',
                              width: 50*fem,
                              height: 50*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group16qmF (111:1644)
                    left: 22*fem,
                    top: 346*fem,
                    child: Align(
                      child: SizedBox(
                        width: 309*fem,
                        height: 145*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-16-vWH.png',
                          width: 309*fem,
                          height: 145*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iconographycaesarzkn5fb (26:2343)
                    left: 331*fem,
                    top: 538*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 20*fem,
                        child: Image.asset(
                          'assets/page-1/images/iconography-caesarzkn-Edj.png',
                          width: 20*fem,
                          height: 20*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iconographycaesarzknjEM (26:2339)
                    left: 118*fem,
                    top: 538*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 20*fem,
                        child: Image.asset(
                          'assets/page-1/images/iconography-caesarzkn-SfX.png',
                          width: 20*fem,
                          height: 20*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iconographycaesarzknniR (26:2335)
                    left: 212*fem,
                    top: 547*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 2*fem,
                        child: Image.asset(
                          'assets/page-1/images/iconography-caesarzkn-HRw.png',
                          width: 20*fem,
                          height: 2*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iconographycaesarzknf1X (26:2331)
                    left: 13*fem,
                    top: 547*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 2*fem,
                        child: Image.asset(
                          'assets/page-1/images/iconography-caesarzkn-bfB.png',
                          width: 20*fem,
                          height: 2*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // pictureY5K (26:2322)
                    left: 151.5*fem,
                    top: 90.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 53*fem,
                          height: 22*fem,
                          child: Text(
                            'picture',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'SF Pro Text',
                              fontSize: 17*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2941176471*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // buttonscellPbj (26:2347)
                    left: 287*fem,
                    top: 447*fem,
                    child: Align(
                      child: SizedBox(
                        width: 44*fem,
                        height: 44*fem,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/page-1/images/buttons-cell.png',
                            width: 44*fem,
                            height: 44*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // walle112ub (111:1642)
                    left: 31*fem,
                    top: 66*fem,
                    child: Align(
                      child: SizedBox(
                        width: 299*fem,
                        height: 202*fem,
                        child: Image.asset(
                          'assets/page-1/images/walle1-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // buttonsprimery4LV (111:1638)
              margin: EdgeInsets.fromLTRB(106*fem, 0*fem, 105*fem, 22*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xff000080),
                borderRadius: BorderRadius.circular(12*fem),
              ),
              child: Center(
                child: Center(
                  child: Text(
                    'Confirm',
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
            Container(
              // tabbarios5tabssfohP (I10:11496;10:2672)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Navbar(fem: fem),
                  Container(
                    // ioshomeindicatorsfroP (I10:11496;10:2672;17:132)
                    padding: EdgeInsets.fromLTRB(121*fem, 21*fem, 120*fem, 8*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff202024),
                    ),
                    child: Center(
                      // homeindicatork85 (I10:11496;10:2672;17:132;2:2)
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
