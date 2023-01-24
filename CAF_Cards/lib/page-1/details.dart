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
        // detailsrPf (10:10948)
        padding: EdgeInsets.fromLTRB(9*fem, 31*fem, 9*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup7cpfu73 (T1TKpYRzPZaQqwv6jw7cPF)
              margin: EdgeInsets.fromLTRB(25*fem, 0*fem, 28*fem, 57*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // iconographycaesarzknaU5 (26:970)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250*fem, 2*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 32*fem,
                        height: 32*fem,
                        child: Image.asset(
                          'assets/page-1/images/iconography-caesarzkn-ee1.png',
                          width: 32*fem,
                          height: 32*fem,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    // iconsPgR (26:982)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 40*fem,
                      height: 40*fem,
                      child: Image.asset(
                        'assets/page-1/images/icons-LeH.png',
                        width: 40*fem,
                        height: 40*fem,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group6f89 (111:2363)
              margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 6.14*fem, 61*fem),
              width: double.infinity,
              height: 576*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle38Jgu (111:2364)
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
                    // group9koo (111:2366)
                    left: 292.9998779297*fem,
                    top: 3*fem,
                    child: Align(
                      child: SizedBox(
                        width: 66.86*fem,
                        height: 66.86*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-9-PCH.png',
                          width: 66.86*fem,
                          height: 66.86*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // oXB (111:2370)
                    left: 285*fem,
                    top: 22.5*fem,
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
                    // roundstartget1nP7 (111:2371)
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
                    // topfdergierb5f (111:2372)
                    left: 28*fem,
                    top: 22.5*fem,
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
                    // asmallrobotthatlovestocleanqkh (111:2373)
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
                    // grafik4fUq (111:2374)
                    left: 28*fem,
                    top: 66*fem,
                    child: Align(
                      child: SizedBox(
                        width: 302*fem,
                        height: 202*fem,
                        child: Image.asset(
                          'assets/page-1/images/grafik-4-yTT.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group15kWH (111:2375)
                    left: 11*fem,
                    top: 522.1428222656*fem,
                    child: Container(
                      width: 64.58*fem,
                      height: 46.36*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            // aVK (111:2381)
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
                            // group7DoB (111:2376)
                            width: 32.83*fem,
                            height: 46.36*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-7-FWM.png',
                              width: 32.83*fem,
                              height: 46.36*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group14iE9 (111:2382)
                    left: 269*fem,
                    top: 521*fem,
                    child: Container(
                      width: 81*fem,
                      height: 50*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            // yfs (111:2383)
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
                            // group83vd (111:2384)
                            width: 50*fem,
                            height: 50*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-8-FpZ.png',
                              width: 50*fem,
                              height: 50*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group16LPw (111:2388)
                    left: 22*fem,
                    top: 346*fem,
                    child: Align(
                      child: SizedBox(
                        width: 309*fem,
                        height: 145*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-16-Bxq.png',
                          width: 309*fem,
                          height: 145*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // pictureyho (111:2394)
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
                    // walle111Pb (111:2395)
                    left: 31*fem,
                    top: 66*fem,
                    child: Align(
                      child: SizedBox(
                        width: 299*fem,
                        height: 202*fem,
                        child: Image.asset(
                          'assets/page-1/images/walle1-1-ivR.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group236A9 (111:2396)
                    left: 188*fem,
                    top: 415*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 33*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-23-DqF.png',
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
              // tabbarios5tabssfAvh (I10:11721;10:2672)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // iconrowtrh (I10:11721;10:2672;17:118)
                    padding: EdgeInsets.fromLTRB(17*fem, 1*fem, 18*fem, 0*fem),
                    width: double.infinity,
                    height: 53*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff202024),
                    ),
                    child: Container(
                      // autogroupdhthydF (T1TLLXa2Ym4ASaDZ5pDHth)
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            // frame55RP (I10:11721;10:2672;17:119)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(4.17*fem, 4.17*fem, 4.13*fem, 4.17*fem),
                              height: double.infinity,
                              child: Align(
                                // iconsjkq (I10:11721;10:2672;17:120)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 27.71*fem,
                                  height: 27.71*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.95*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/icons-B8y.png',
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
                            // frame6kR3 (I10:11721;10:2672;17:122)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3*fem, 2.99*fem, 3*fem, 2.99*fem),
                              height: double.infinity,
                              child: Align(
                                // iconographycaesarzknou7 (I10:11721;10:2672;17:123)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 30*fem,
                                  height: 29.86*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16.15*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/iconography-caesarzkn-2Z3.png',
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
                            // frame7ppD (I10:11721;10:2672;17:125)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3.05*fem, 1.5*fem, 3*fem, 1.5*fem),
                              height: double.infinity,
                              child: Align(
                                // iconographycaesarzknJzH (I10:11721;10:2672;17:126)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 29.95*fem,
                                  height: 31.5*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17.5*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/iconography-caesarzkn-5th.png',
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
                            // frame9XMF (I10:11721;10:2672;17:138)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3.38*fem, 3.41*fem, 3.38*fem, 3.41*fem),
                              height: double.infinity,
                              child: Align(
                                // iconsQA9 (I10:11721;10:2672;17:139)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 29.25*fem,
                                  height: 29.25*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.94*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/icons-fPs.png',
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
                            // frame83iu (I10:11721;10:2672;17:128)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3.33*fem, 3.6*fem, 3.33*fem, 3.6*fem),
                              height: double.infinity,
                              child: Align(
                                // iconswZP (I10:11721;10:2672;17:129)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 29.34*fem,
                                  height: 28.8*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/icons-vX7.png',
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
                    // ioshomeindicatorsfnpu (I10:11721;10:2672;17:132)
                    padding: EdgeInsets.fromLTRB(121*fem, 21*fem, 120*fem, 8*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff202024),
                    ),
                    child: Center(
                      // homeindicatorgfP (I10:11721;10:2672;17:132;2:2)
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