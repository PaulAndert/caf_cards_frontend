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
        // createpreviewRPs (111:1985)
        padding: EdgeInsets.fromLTRB(9*fem, 42*fem, 9*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // iconographycaesarzknrEH (111:2012)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 301*fem, 21*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 32*fem,
                  height: 32*fem,
                  child: Image.asset(
                    'assets/page-1/images/iconography-caesarzkn-mAD.png',
                    width: 32*fem,
                    height: 32*fem,
                  ),
                ),
              ),
            ),
            Container(
              // group6GYu (111:1986)
              margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 6.14*fem, 22*fem),
              width: double.infinity,
              height: 576*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle38LHs (111:1987)
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
                    // group9aCD (111:1989)
                    left: 293*fem,
                    top: 3*fem,
                    child: Align(
                      child: SizedBox(
                        width: 66.86*fem,
                        height: 66.86*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-9-cNq.png',
                          width: 66.86*fem,
                          height: 66.86*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // QS9 (111:1993)
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
                    // roundstartget1QaZ (111:1994)
                    left: 122*fem,
                    top: 396.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 110*fem,
                          height: 44*fem,
                          child: Text(
                            'Round start:\nGet 1  .',
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
                    // topfdergier1qF (111:1995)
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
                    // asmallrobotthatlovestocleanpnh (111:1996)
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
                    // grafik4qho (111:1997)
                    left: 28*fem,
                    top: 66*fem,
                    child: Align(
                      child: SizedBox(
                        width: 302*fem,
                        height: 202*fem,
                        child: Image.asset(
                          'assets/page-1/images/grafik-4-jbB.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group15vDT (111:1998)
                    left: 11*fem,
                    top: 522.1428222656*fem,
                    child: Container(
                      width: 64.58*fem,
                      height: 46.36*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            // nWZ (111:2004)
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
                            // group7qDw (111:1999)
                            width: 32.83*fem,
                            height: 46.36*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-7-FbB.png',
                              width: 32.83*fem,
                              height: 46.36*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group14JdK (111:2005)
                    left: 269*fem,
                    top: 521*fem,
                    child: Container(
                      width: 81*fem,
                      height: 50*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            // n2h (111:2006)
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
                            // group82xd (111:2007)
                            width: 50*fem,
                            height: 50*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-8-WQV.png',
                              width: 50*fem,
                              height: 50*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group16iaZ (111:2013)
                    left: 22*fem,
                    top: 346*fem,
                    child: Align(
                      child: SizedBox(
                        width: 309*fem,
                        height: 145*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-16-A8V.png',
                          width: 309*fem,
                          height: 145*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // pictureYpV (111:2024)
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
                    // walle11LkM (111:2027)
                    left: 31*fem,
                    top: 66*fem,
                    child: Align(
                      child: SizedBox(
                        width: 299*fem,
                        height: 202*fem,
                        child: Image.asset(
                          'assets/page-1/images/walle1-1-Eey.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group23QER (111:2028)
                    left: 188*fem,
                    top: 415*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 33*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-23-vff.png',
                          width: 33*fem,
                          height: 33*fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // buttonsprimerysdo (111:2026)
              margin: EdgeInsets.fromLTRB(106*fem, 0*fem, 105*fem, 22*fem),
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
                        'Create card',
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
              // tabbarios5tabssfQXF (I111:2011;10:2672)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // iconrowuyo (I111:2011;10:2672;17:118)
                    padding: EdgeInsets.fromLTRB(17*fem, 1*fem, 18*fem, 0*fem),
                    width: double.infinity,
                    height: 53*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff202024),
                    ),
                    child: Container(
                      // autogroupeypfQff (T1T4gyeEYme5aAScB9eYPf)
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            // frame5WCu (I111:2011;10:2672;17:119)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(4.17*fem, 4.17*fem, 4.13*fem, 4.17*fem),
                              height: double.infinity,
                              child: Align(
                                // iconsNku (I111:2011;10:2672;17:120)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 27.71*fem,
                                  height: 27.71*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.95*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/icons-mhF.png',
                                      width: 27.71*fem,
                                      height: 27.71*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40*fem,
                          ),
                          TextButton(
                            // frame6mHF (I111:2011;10:2672;17:122)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3*fem, 2.99*fem, 3*fem, 2.99*fem),
                              height: double.infinity,
                              child: Align(
                                // iconographycaesarzkndaM (I111:2011;10:2672;17:123)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 30*fem,
                                  height: 29.86*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16.15*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/iconography-caesarzkn-AJ9.png',
                                      width: 30*fem,
                                      height: 29.86*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40*fem,
                          ),
                          TextButton(
                            // frame7T3b (I111:2011;10:2672;17:125)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3.05*fem, 1.5*fem, 3*fem, 1.5*fem),
                              height: double.infinity,
                              child: Align(
                                // iconographycaesarzknM8y (I111:2011;10:2672;17:126)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 29.95*fem,
                                  height: 31.5*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17.5*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/iconography-caesarzkn-csP.png',
                                      width: 29.95*fem,
                                      height: 31.5*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40*fem,
                          ),
                          TextButton(
                            // frame9A6R (I111:2011;10:2672;17:138)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3.38*fem, 3.41*fem, 3.38*fem, 3.41*fem),
                              height: double.infinity,
                              child: Align(
                                // iconsT5X (I111:2011;10:2672;17:139)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 29.25*fem,
                                  height: 29.25*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.94*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/icons-oKs.png',
                                      width: 29.25*fem,
                                      height: 29.25*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40*fem,
                          ),
                          TextButton(
                            // frame8HaM (I111:2011;10:2672;17:128)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3.33*fem, 3.6*fem, 3.33*fem, 3.6*fem),
                              height: double.infinity,
                              child: Align(
                                // iconsAu3 (I111:2011;10:2672;17:129)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 29.34*fem,
                                  height: 28.8*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/icons-qMX.png',
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
                    // ioshomeindicatorsfoSD (I111:2011;10:2672;17:132)
                    padding: EdgeInsets.fromLTRB(121*fem, 21*fem, 120*fem, 8*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff202024),
                    ),
                    child: Center(
                      // homeindicatorHcH (I111:2011;10:2672;17:132;2:2)
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