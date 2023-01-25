import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Collection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // collection1C1 (10:10947)
        padding: EdgeInsets.fromLTRB(0*fem, 56*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // yourcardcollectionT41 (114:1363)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 128*fem, 5*fem),
              child: Text(
                'Your card collection:',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'SF Pro Display',
                  fontSize: 24*ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2575*ffem/fem,
                  letterSpacing: -0.2399999946*fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // autogroupkgw1G1T (T1T5nMzHVypa6LoPiDkGW1)
              margin: EdgeInsets.fromLTRB(27*fem, 0*fem, 27.25*fem, 18*fem),
              width: double.infinity,
              height: 234*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // wallew7b (111:2116)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24.99*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 157.75*fem,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle38xHb (111:2117)
                              left: 1.7401733398*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 156.01*fem,
                                  height: 234*fem,
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
                              // group10Pdo (111:2118)
                              left: 11.7912597656*fem,
                              top: 119.5625*fem,
                              child: Container(
                                width: 135.03*fem,
                                height: 76.44*fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // autogroupzbgheZj (T1T6DgbRmUr6TrAaMdZbgh)
                                      margin: EdgeInsets.fromLTRB(0.21*fem, 0*fem, 0*fem, 51.87*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // vector8stroke8Uu (111:2119)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0.39*fem, 107.29*fem, 0*fem),
                                            width: 13.11*fem,
                                            height: 12.09*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-8-stroke-NUV.png',
                                              width: 13.11*fem,
                                              height: 12.09*fem,
                                            ),
                                          ),
                                          Container(
                                            // vector8strokeAgV (111:2120)
                                            width: 14.42*fem,
                                            height: 10.99*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-8-stroke-2hT.png',
                                              width: 14.42*fem,
                                              height: 10.99*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // autogroupdwem4Wy (T1T6KbbEv4XZbAHEuGDwEm)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            // vector8stroke2s7 (111:2121)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107.5*fem, 0*fem),
                                            width: 14.42*fem,
                                            height: 10.99*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-8-stroke-ghB.png',
                                              width: 14.42*fem,
                                              height: 10.99*fem,
                                            ),
                                          ),
                                          Container(
                                            // vector8strokeJpd (111:2122)
                                            width: 13.11*fem,
                                            height: 12.09*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/vector-8-stroke-mam.png',
                                              width: 13.11*fem,
                                              height: 12.09*fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // group13c4d (111:2124)
                              left: 118.467590332*fem,
                              top: 3.21875*fem,
                              child: Container(
                                width: 32.53*fem,
                                height: 27.16*fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // group9tH3 (111:2125)
                                      left: 3.3148803711*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 29.22*fem,
                                          height: 27.16*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/group-9-vnq.png',
                                            width: 29.22*fem,
                                            height: 27.16*fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // joT (111:2129)
                                      left: 0*fem,
                                      top: 1.390625*fem,
                                      child: Center(
                                        child: Align(
                                          child: SizedBox(
                                            width: 11*fem,
                                            height: 22*fem,
                                            child: Text(
                                              '2',
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
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // roundstartget1MZw (111:2130)
                              left: 43*fem,
                              top: 140*fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 72*fem,
                                    height: 44*fem,
                                    child: Text(
                                      'Round start:\nGet 1  .',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.6923076923*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group10y5X (111:2357)
                              left: 84.0000610352*fem,
                              top: 163*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 25*fem,
                                  height: 23.16*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-10.png',
                                    width: 25*fem,
                                    height: 23.16*fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // topfdergier1nu (111:2131)
                              left: 14*fem,
                              top: 4.5*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 42*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Wall-E',
                                    style: SafeGoogleFont (
                                      'SF Pro Display',
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.4666666667*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // walle114FP (111:2356)
                              left: 14*fem,
                              top: 29*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 131*fem,
                                  height: 82*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/walle1-1-AVT.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group12LCu (111:2133)
                              left: 15.4762573242*fem,
                              top: 204.390625*fem,
                              child: Container(
                                width: 28.04*fem,
                                height: 22*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // cRK (111:2139)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.69*fem, 0*fem),
                                        child: Text(
                                          '1',
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
                                    Container(
                                      // group7gAH (111:2134)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0.67*fem, 0*fem, 0*fem),
                                      width: 14.35*fem,
                                      height: 18.83*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-7-med.png',
                                        width: 14.35*fem,
                                        height: 18.83*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // group11x7o (111:2140)
                              left: 110.3495483398*fem,
                              top: 205.015625*fem,
                              child: Container(
                                width: 35.22*fem,
                                height: 22*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // 39F (111:2141)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.37*fem, 0*fem),
                                        child: Text(
                                          '2',
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
                                    Container(
                                      // group8tQm (111:2142)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0.41*fem, 0*fem, 0*fem),
                                      width: 21.85*fem,
                                      height: 20.31*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-8-uZF.png',
                                        width: 21.85*fem,
                                        height: 20.31*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // alpeideaYVK (111:2146)
                    padding: EdgeInsets.fromLTRB(0*fem, 3.22*fem, 0*fem, 0*fem),
                    width: 156.01*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff47479d),
                      borderRadius: BorderRadius.circular(29*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupzehbZQR (T1T6o5oSZVYqPQDuYpZeHb)
                          margin: EdgeInsets.fromLTRB(13.26*fem, 0*fem, 6.75*fem, 8.56*fem),
                          width: double.infinity,
                          height: 107.78*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group13Dzm (111:2154)
                                left: 103.467590332*fem,
                                top: 0*fem,
                                child: Container(
                                  width: 32.53*fem,
                                  height: 27.16*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // group96Hs (111:2155)
                                        left: 3.3150024414*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 29.22*fem,
                                            height: 27.16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/group-9-3MF.png',
                                              width: 29.22*fem,
                                              height: 27.16*fem,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // jrd (111:2159)
                                        left: 0*fem,
                                        top: 1.390625*fem,
                                        child: Center(
                                          child: Align(
                                            child: SizedBox(
                                              width: 11*fem,
                                              height: 22*fem,
                                              child: Text(
                                                '4',
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
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // topfdergierAS9 (111:2161)
                                left: 0*fem,
                                top: 1.28125*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 67*fem,
                                    height: 22*fem,
                                    child: Text(
                                      'Alpheidae',
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.4666666667*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // j783yp1zg5 (111:2175)
                                left: 0*fem,
                                top: 25.78125*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 130*fem,
                                    height: 82*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/j783yp-1-WdB.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupshbtryB (T1T73pssniSfQUY9x8SHbT)
                          margin: EdgeInsets.fromLTRB(10.05*fem, 0*fem, 10.93*fem, 8.39*fem),
                          width: double.infinity,
                          height: 76.44*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group10XZX (111:2148)
                                left: 0*fem,
                                top: 0*fem,
                                child: Container(
                                  width: 135.03*fem,
                                  height: 76.44*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroupca4mCvZ (T1T7EjjMxq368ZNPtQca4m)
                                        margin: EdgeInsets.fromLTRB(0.21*fem, 0*fem, 0*fem, 51.87*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // vector8stroke71w (111:2149)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0.39*fem, 107.29*fem, 0*fem),
                                              width: 13.11*fem,
                                              height: 12.09*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-V9f.png',
                                                width: 13.11*fem,
                                                height: 12.09*fem,
                                              ),
                                            ),
                                            Container(
                                              // vector8strokem6V (111:2150)
                                              width: 14.42*fem,
                                              height: 10.99*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-VUH.png',
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupvwj74LV (T1T7L9k1Qf2ThPp6tmvWj7)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // vector8strokeMaV (111:2151)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107.5*fem, 0*fem),
                                              width: 14.42*fem,
                                              height: 10.99*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-ZUR.png',
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                              ),
                                            ),
                                            Container(
                                              // vector8strokeRaM (111:2152)
                                              width: 13.11*fem,
                                              height: 12.09*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-fHw.png',
                                                width: 13.11*fem,
                                                height: 12.09*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // roundstartdeal3damagetoarandom (111:2160)
                                left: 13.2087402344*fem,
                                top: 5.4375*fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 108*fem,
                                      height: 66*fem,
                                      child: Text(
                                        'Round start:\nDeal 3 damage to a random enemy  ',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.6923076923*ffem/fem,
                                          color: Color(0xffffffff),
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
                          // autogroupq1qyhAV (T1T7W4dABGEhJXJRkXQ1Qy)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.18*fem, 0*fem),
                          width: double.infinity,
                          height: 29.61*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroupw7iunSq (T1T7eeDCQXc1R3fXqZw7iu)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.83*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(13.74*fem, 0*fem, 0*fem, 0*fem),
                                width: 41.78*fem,
                                height: double.infinity,
                                child: Container(
                                  // group12Tos (111:2162)
                                  width: double.infinity,
                                  height: 22*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        // AyB (111:2168)
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.69*fem, 0*fem),
                                          child: Text(
                                            '2',
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
                                      Container(
                                        // group7DgZ (111:2163)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.67*fem, 0*fem, 0*fem),
                                        width: 14.35*fem,
                                        height: 18.83*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-7-Gbo.png',
                                          width: 14.35*fem,
                                          height: 18.83*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group11tXo (111:2169)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.36*fem),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // nt5 (111:2170)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.37*fem, 0*fem),
                                        child: Text(
                                          '1',
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
                                    Container(
                                      // group8s8q (111:2171)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0.41*fem, 0*fem, 0*fem),
                                      width: 21.85*fem,
                                      height: 20.31*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-8-uth.png',
                                        width: 21.85*fem,
                                        height: 20.31*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupti6r8aZ (T1T8JxSgwcc2LxVcVrti6R)
              margin: EdgeInsets.fromLTRB(30.74*fem, 0*fem, 26.25*fem, 18*fem),
              width: double.infinity,
              height: 234*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // middleleftogh (111:2240)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23.99*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(0*fem, 3.22*fem, 0*fem, 0*fem),
                    width: 156.01*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff47479d),
                      borderRadius: BorderRadius.circular(29*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupwlnhq7b (T1T8bN91r1oWEHiPN3wLNh)
                          margin: EdgeInsets.fromLTRB(13.26*fem, 0*fem, 6.75*fem, 8.56*fem),
                          width: double.infinity,
                          height: 107.78*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group13Gih (111:2252)
                                left: 103.467590332*fem,
                                top: 0*fem,
                                child: Container(
                                  width: 32.53*fem,
                                  height: 27.16*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // group9gGd (111:2253)
                                        left: 3.3148803711*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 29.22*fem,
                                            height: 27.16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/group-9-4To.png',
                                              width: 29.22*fem,
                                              height: 27.16*fem,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // 2Uu (111:2257)
                                        left: 0*fem,
                                        top: 1.390625*fem,
                                        child: Center(
                                          child: Align(
                                            child: SizedBox(
                                              width: 11*fem,
                                              height: 22*fem,
                                              child: Text(
                                                '2',
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
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // topfdergierPCy (111:2259)
                                left: 0*fem,
                                top: 1.28125*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 54*fem,
                                    height: 22*fem,
                                    child: Text(
                                      'Old tree',
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.4666666667*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // image1o1o (111:2260)
                                left: 0*fem,
                                top: 25.78125*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 130*fem,
                                    height: 82*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/image-1-hND.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupnphsRos (T1T8nXV5sWEyjcP74xnpHs)
                          margin: EdgeInsets.fromLTRB(10.05*fem, 0*fem, 10.93*fem, 8.39*fem),
                          width: double.infinity,
                          height: 76.44*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group8WKX (111:2242)
                                left: 90.2087402344*fem,
                                top: 32.4375*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 15*fem,
                                    height: 13.31*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-8-9tH.png',
                                      width: 15*fem,
                                      height: 13.31*fem,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // group10ZHo (111:2246)
                                left: 0*fem,
                                top: 0*fem,
                                child: Container(
                                  width: 135.03*fem,
                                  height: 76.44*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroupcgqmSMb (T1T92buxq4DM1P8k5vCGQm)
                                        margin: EdgeInsets.fromLTRB(0.21*fem, 0*fem, 0*fem, 51.87*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // vector8strokeipu (111:2247)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0.39*fem, 107.29*fem, 0*fem),
                                              width: 13.11*fem,
                                              height: 12.09*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-6rR.png',
                                                width: 13.11*fem,
                                                height: 12.09*fem,
                                              ),
                                            ),
                                            Container(
                                              // vector8strokePRF (111:2248)
                                              width: 14.42*fem,
                                              height: 10.99*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-a53.png',
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroup4cdjGzq (T1T986koZLpQAdXH1q4cDj)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // vector8strokeb1X (111:2249)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107.5*fem, 0*fem),
                                              width: 14.42*fem,
                                              height: 10.99*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-BfT.png',
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                              ),
                                            ),
                                            Container(
                                              // vector8strokeeVb (111:2250)
                                              width: 13.11*fem,
                                              height: 12.09*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-pgD.png',
                                                width: 13.11*fem,
                                                height: 12.09*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // roundstartregenerate1ofeveryal (111:2258)
                                left: 14.7087402344*fem,
                                top: 5.4375*fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 105*fem,
                                      height: 66*fem,
                                      child: Text(
                                        'Round start:\nregenerate 1        of every ally',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.6923076923*ffem/fem,
                                          color: Color(0xffffffff),
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
                          // autogrouprjcm8ZB (T1T9HqyZm2oGaw7x2VRJcM)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.18*fem, 0*fem),
                          width: double.infinity,
                          height: 29.61*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroupcstfD4q (T1T9PvdmUXi6u58GRDCSTf)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.83*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(13.74*fem, 0*fem, 0*fem, 0*fem),
                                width: 41.78*fem,
                                height: double.infinity,
                                child: Container(
                                  // group12sv5 (111:2261)
                                  width: double.infinity,
                                  height: 22*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        // bLH (111:2267)
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.69*fem, 0*fem),
                                          child: Text(
                                            '0',
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
                                      Container(
                                        // group7GhK (111:2262)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.67*fem, 0*fem, 0*fem),
                                        width: 14.35*fem,
                                        height: 18.83*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-7-zny.png',
                                          width: 14.35*fem,
                                          height: 18.83*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group11jL1 (111:2268)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.36*fem),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // q89 (111:2269)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.37*fem, 0*fem),
                                        child: Text(
                                          '4',
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
                                    Container(
                                      // group8fcy (111:2270)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0.41*fem, 0*fem, 0*fem),
                                      width: 21.85*fem,
                                      height: 20.31*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-8-TJ5.png',
                                        width: 21.85*fem,
                                        height: 20.31*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // middlerightibF (111:2274)
                    padding: EdgeInsets.fromLTRB(0*fem, 3.22*fem, 0*fem, 0*fem),
                    width: 156.01*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff47479d),
                      borderRadius: BorderRadius.circular(29*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupwu8hYqB (T1TAGjWSaSzWpukHZ7wu8H)
                          margin: EdgeInsets.fromLTRB(12.26*fem, 0*fem, 6.75*fem, 8.56*fem),
                          width: double.infinity,
                          height: 107.78*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group13pnh (111:2282)
                                left: 104.467590332*fem,
                                top: 0*fem,
                                child: Container(
                                  width: 32.53*fem,
                                  height: 27.16*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // group9uJM (111:2283)
                                        left: 3.3150024414*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 29.22*fem,
                                            height: 27.16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/group-9-rPw.png',
                                              width: 29.22*fem,
                                              height: 27.16*fem,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // wkq (111:2287)
                                        left: 0*fem,
                                        top: 1.390625*fem,
                                        child: Center(
                                          child: Align(
                                            child: SizedBox(
                                              width: 11*fem,
                                              height: 22*fem,
                                              child: Text(
                                                '3',
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
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // topfdergierP73 (111:2289)
                                left: 0*fem,
                                top: 1.28125*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 90*fem,
                                    height: 22*fem,
                                    child: Text(
                                      'Monstertruck',
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.4666666667*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // monstertruckfahrenfuerstenaux1 (111:2290)
                                left: 0*fem,
                                top: 25.78125*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 131*fem,
                                    height: 82*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/monster-truck-fahren-fuerstenaux11-1-xFw.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupfqqj4cV (T1TAQymhfsu6ZnL5wzFQqj)
                          margin: EdgeInsets.fromLTRB(10.05*fem, 0*fem, 10.93*fem, 8.39*fem),
                          width: double.infinity,
                          height: 76.44*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group10YXf (111:2276)
                                left: 0*fem,
                                top: 0*fem,
                                child: Container(
                                  width: 135.03*fem,
                                  height: 76.44*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroup5jndDth (T1TAYZPQVdtDZMMGxW5jND)
                                        margin: EdgeInsets.fromLTRB(0.21*fem, 0*fem, 0*fem, 51.87*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // vector8stroke7jB (111:2277)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0.39*fem, 107.29*fem, 0*fem),
                                              width: 13.11*fem,
                                              height: 12.09*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-ANZ.png',
                                                width: 13.11*fem,
                                                height: 12.09*fem,
                                              ),
                                            ),
                                            Container(
                                              // vector8strokeNf7 (111:2278)
                                              width: 14.42*fem,
                                              height: 10.99*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-Ff3.png',
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupw3nufeD (T1TAgyK49z2AV3pjCTW3Nu)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // vector8strokekff (111:2279)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107.5*fem, 0*fem),
                                              width: 14.42*fem,
                                              height: 10.99*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-8uT.png',
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                              ),
                                            ),
                                            Container(
                                              // vector8strokecC5 (111:2280)
                                              width: 13.11*fem,
                                              height: 12.09*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-DuX.png',
                                                width: 13.11*fem,
                                                height: 12.09*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // none5rM (111:2288)
                                left: 52.7087402344*fem,
                                top: 27.4375*fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 29*fem,
                                      height: 22*fem,
                                      child: Text(
                                        'none',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.6923076923*ffem/fem,
                                          color: Color(0xffffffff),
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
                          // autogroupxwgvsGR (T1TAuoH1remHrdPyNFXWGV)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.18*fem, 0*fem),
                          width: double.infinity,
                          height: 29.61*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroup53xk9Dw (T1TB1YcSSKDPo7cz4o53XK)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.83*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(13.74*fem, 0*fem, 0*fem, 0*fem),
                                width: 41.78*fem,
                                height: double.infinity,
                                child: Container(
                                  // group12RBT (111:2291)
                                  width: double.infinity,
                                  height: 22*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        // igM (111:2297)
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.69*fem, 0*fem),
                                          child: Text(
                                            '4',
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
                                      Container(
                                        // group7AYM (111:2292)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.67*fem, 0*fem, 0*fem),
                                        width: 14.35*fem,
                                        height: 18.83*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-7-94H.png',
                                          width: 14.35*fem,
                                          height: 18.83*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group112Kf (111:2298)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.36*fem),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // vA9 (111:2299)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.37*fem, 0*fem),
                                        child: Text(
                                          '4',
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
                                    Container(
                                      // group8NH3 (111:2300)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0.41*fem, 0*fem, 0*fem),
                                      width: 21.85*fem,
                                      height: 20.31*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-8-Z9F.png',
                                        width: 21.85*fem,
                                        height: 20.31*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupuyc1PT3 (T1TBnBziYGyHpQHrtSUyC1)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9*fem, 0*fem),
              width: 384*fem,
              height: 256*fem,
              child: Stack(
                children: [
                  Positioned(
                    // bottomleftTC1 (111:2176)
                    left: 29.7401733398*fem,
                    top: 0*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0*fem, 3.22*fem, 0*fem, 0*fem),
                      width: 156.01*fem,
                      height: 234*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff47479d),
                        borderRadius: BorderRadius.circular(29*fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupmc4m3g1 (T1TC4w1paWdW5PHwSomC4m)
                            margin: EdgeInsets.fromLTRB(13.26*fem, 0*fem, 6.75*fem, 8.56*fem),
                            width: double.infinity,
                            height: 107.78*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group13vE1 (111:2184)
                                  left: 103.467590332*fem,
                                  top: 0*fem,
                                  child: Container(
                                    width: 32.53*fem,
                                    height: 27.16*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // group9PtH (111:2185)
                                          left: 3.3148803711*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 29.22*fem,
                                              height: 27.16*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/group-9-q3s.png',
                                                width: 29.22*fem,
                                                height: 27.16*fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // oBK (111:2189)
                                          left: 0*fem,
                                          top: 1.390625*fem,
                                          child: Center(
                                            child: Align(
                                              child: SizedBox(
                                                width: 11*fem,
                                                height: 22*fem,
                                                child: Text(
                                                  '5',
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
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // topfdergieroKj (111:2191)
                                  left: 0*fem,
                                  top: 1.28125*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 85*fem,
                                      height: 22*fem,
                                      child: Text(
                                        'Programmer',
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 15*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.4666666667*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // bjarnestroustrup1dpZ (111:2192)
                                  left: 0*fem,
                                  top: 25.78125*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 130*fem,
                                      height: 82*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/bjarnestroustrup-1-opq.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupd6vqrhK (T1TCDG7GxQ9mQfpZmDd6vq)
                            margin: EdgeInsets.fromLTRB(10.05*fem, 0*fem, 10.93*fem, 8.39*fem),
                            width: double.infinity,
                            height: 76.44*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group10XoT (111:2178)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Container(
                                    width: 135.03*fem,
                                    height: 76.44*fem,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupmo4zQMT (T1TCPRV1aPD3o39NPbmo4Z)
                                          margin: EdgeInsets.fromLTRB(0.21*fem, 0*fem, 0*fem, 51.87*fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // vector8stroke5Ch (111:2179)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0.39*fem, 107.29*fem, 0*fem),
                                                width: 13.11*fem,
                                                height: 12.09*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/vector-8-stroke-nEy.png',
                                                  width: 13.11*fem,
                                                  height: 12.09*fem,
                                                ),
                                              ),
                                              Container(
                                                // vector8strokevUD (111:2180)
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/vector-8-stroke-qQy.png',
                                                  width: 14.42*fem,
                                                  height: 10.99*fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // autogroupjunvnWR (T1TCY153oeaMuZWUUeJuNV)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                // vector8strokef4R (111:2181)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107.5*fem, 0*fem),
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/vector-8-stroke-8PP.png',
                                                  width: 14.42*fem,
                                                  height: 10.99*fem,
                                                ),
                                              ),
                                              Container(
                                                // vector8strokeuDf (111:2182)
                                                width: 13.11*fem,
                                                height: 12.09*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/vector-8-stroke-gcd.png',
                                                  width: 13.11*fem,
                                                  height: 12.09*fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // roundstartstealsthestrongesten (111:2190)
                                  left: 10.7087402344*fem,
                                  top: 5.4375*fem,
                                  child: Center(
                                    child: Align(
                                      child: SizedBox(
                                        width: 113*fem,
                                        height: 66*fem,
                                        child: Text(
                                          'Round start:\nSteals the strongest enemy for 1 turn',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'SF Pro Display',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.6923076923*ffem/fem,
                                            color: Color(0xffffffff),
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
                            // autogroupftkdLiH (T1TCspqMLrzq7pV8C9FtkD)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.18*fem, 0*fem),
                            width: double.infinity,
                            height: 29.61*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // autogroupvejh25K (T1TCyjqAVSgJF8bnjmvEJH)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.83*fem, 0*fem),
                                  padding: EdgeInsets.fromLTRB(13.74*fem, 0*fem, 0*fem, 0*fem),
                                  width: 41.78*fem,
                                  height: double.infinity,
                                  child: Container(
                                    // group12hhF (111:2193)
                                    width: double.infinity,
                                    height: 22*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Center(
                                          // 1hw (111:2199)
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.69*fem, 0*fem),
                                            child: Text(
                                              '3',
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
                                        Container(
                                          // group7fnV (111:2194)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0.67*fem, 0*fem, 0*fem),
                                          width: 14.35*fem,
                                          height: 18.83*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/group-7-trh.png',
                                            width: 14.35*fem,
                                            height: 18.83*fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  // group11LNq (111:2200)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.36*fem),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        // dcq (111:2201)
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.37*fem, 0*fem),
                                          child: Text(
                                            '1',
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
                                      Container(
                                        // group8hch (111:2202)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.41*fem, 0*fem, 0*fem),
                                        width: 21.85*fem,
                                        height: 20.31*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-8-TSM.png',
                                          width: 21.85*fem,
                                          height: 20.31*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // bottomrightyq7 (111:2206)
                    left: 209.740234375*fem,
                    top: 0*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0*fem, 3.22*fem, 0*fem, 0*fem),
                      width: 156.01*fem,
                      height: 234*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff47479d),
                        borderRadius: BorderRadius.circular(29*fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupcwedPP3 (T1TDnDViqVyDKW4qsPcwEd)
                            margin: EdgeInsets.fromLTRB(12.26*fem, 0*fem, 6.75*fem, 8.56*fem),
                            width: double.infinity,
                            height: 107.78*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group135Fs (111:2214)
                                  left: 104.467590332*fem,
                                  top: 0*fem,
                                  child: Container(
                                    width: 32.53*fem,
                                    height: 27.16*fem,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // group9A2R (111:2215)
                                          left: 3.3150024414*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 29.22*fem,
                                              height: 27.16*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/group-9-7hF.png',
                                                width: 29.22*fem,
                                                height: 27.16*fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // pcm (111:2219)
                                          left: 0*fem,
                                          top: 1.390625*fem,
                                          child: Center(
                                            child: Align(
                                              child: SizedBox(
                                                width: 11*fem,
                                                height: 22*fem,
                                                child: Text(
                                                  '0',
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
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // topfdergierfdP (111:2221)
                                  left: 1*fem,
                                  top: 1.28125*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 50*fem,
                                      height: 22*fem,
                                      child: Text(
                                        'Zombie',
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 15*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.4666666667*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // ae3a1d2aa08c5f2dc2a4481b25yyay (111:2222)
                                  left: 0*fem,
                                  top: 25.78125*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 131*fem,
                                      height: 82*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/ae3a1d2aa08c5f2dc2a4481b25yyaynjq0ede0odcrmtiwkzewanjlide5mjagmta4mamxymfhmja1zge4mg-1-E4m.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupishbKLZ (T1TDvsuxMDxD2SNmsyiShB)
                            margin: EdgeInsets.fromLTRB(10.05*fem, 0*fem, 10.93*fem, 8.39*fem),
                            width: double.infinity,
                            height: 76.44*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group101DP (111:2208)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Container(
                                    width: 135.03*fem,
                                    height: 76.44*fem,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupzvcmGv1 (T1TE83G2NiPgXm3VatZvcM)
                                          margin: EdgeInsets.fromLTRB(0.21*fem, 0*fem, 0*fem, 51.87*fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // vector8strokeMwT (111:2209)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0.39*fem, 107.29*fem, 0*fem),
                                                width: 13.11*fem,
                                                height: 12.09*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/vector-8-stroke-Jo7.png',
                                                  width: 13.11*fem,
                                                  height: 12.09*fem,
                                                ),
                                              ),
                                              Container(
                                                // vector8strokeq5w (111:2210)
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/vector-8-stroke-sCZ.png',
                                                  width: 14.42*fem,
                                                  height: 10.99*fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // autogroupm4ytXjT (T1TEDHcHFd9gumbYkAm4yT)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                          width: double.infinity,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                // vector8strokeqk9 (111:2211)
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107.5*fem, 0*fem),
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/vector-8-stroke-Hx9.png',
                                                  width: 14.42*fem,
                                                  height: 10.99*fem,
                                                ),
                                              ),
                                              Container(
                                                // vector8strokevWh (111:2212)
                                                width: 13.11*fem,
                                                height: 12.09*fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/vector-8-stroke-UWR.png',
                                                  width: 13.11*fem,
                                                  height: 12.09*fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // roundendloses1EGV (111:2220)
                                  left: 34.2087402344*fem,
                                  top: 16.4375*fem,
                                  child: Center(
                                    child: Align(
                                      child: SizedBox(
                                        width: 66*fem,
                                        height: 44*fem,
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            style: SafeGoogleFont (
                                              'SF Pro Display',
                                              fontSize: 13*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.6923076923*ffem/fem,
                                              color: Color(0xffffffff),
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'Round end:\nLoses 1   ',
                                              ),
                                              TextSpan(
                                                text: '.',
                                                style: SafeGoogleFont (
                                                  'SF Pro Display',
                                                  fontSize: 13*ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.6923076923*ffem/fem,
                                                  color: Color(0xff47479d),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group877K (111:2236)
                                  left: 85.2087402344*fem,
                                  top: 43.4375*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 16*fem,
                                      height: 14*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-8-rZ3.png',
                                        width: 16*fem,
                                        height: 14*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupe8irmBs (T1TES2k3fqH8gwDxzRE8iR)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.19*fem, 0*fem),
                            width: double.infinity,
                            height: 29.61*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // autogroupdgpdSoo (T1TEXhFGy37Z31W9mRDGpd)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.83*fem, 0*fem),
                                  padding: EdgeInsets.fromLTRB(13.74*fem, 0*fem, 0*fem, 0*fem),
                                  width: 41.78*fem,
                                  height: double.infinity,
                                  child: Container(
                                    // group12Wof (111:2223)
                                    width: double.infinity,
                                    height: 22*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Center(
                                          // EDs (111:2229)
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.69*fem, 0*fem),
                                            child: Text(
                                              '1',
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
                                        Container(
                                          // group76G5 (111:2224)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0.67*fem, 0*fem, 0*fem),
                                          width: 14.35*fem,
                                          height: 18.83*fem,
                                          child: Image.asset(
                                            'assets/page-1/images/group-7-4hj.png',
                                            width: 14.35*fem,
                                            height: 18.83*fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  // group11y4y (111:2230)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.36*fem),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        // fiV (111:2231)
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.37*fem, 0*fem),
                                          child: Text(
                                            '2',
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
                                      Container(
                                        // group8Xu7 (111:2232)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.41*fem, 0*fem, 0*fem),
                                        width: 21.85*fem,
                                        height: 20.31*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-8-chs.png',
                                          width: 21.85*fem,
                                          height: 20.31*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle44asP (111:2411)
                    left: 0*fem,
                    top: 160*fem,
                    child: Align(
                      child: SizedBox(
                        width: 384*fem,
                        height: 44*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            color: Color(0xff202024),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // tabbarios5tabssfSPo (I10:11586;10:2672)
                    left: 9*fem,
                    top: 169*fem,
                    child: Container(
                      width: 375*fem,
                      height: 87*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // iconrowHvD (I10:11586;10:2672;17:118)
                            padding: EdgeInsets.fromLTRB(17*fem, 1*fem, 18*fem, 0*fem),
                            width: double.infinity,
                            height: 53*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff202024),
                            ),
                            child: Container(
                              // autogroupk8nyauK (T1TFR177mi64XKo8SbK8Ny)
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextButton(
                                    // frame5gxM (I10:11586;10:2672;17:119)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(4.17*fem, 4.17*fem, 4.13*fem, 4.17*fem),
                                      height: double.infinity,
                                      child: Align(
                                        // iconsNKP (I10:11586;10:2672;17:120)
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          width: 27.71*fem,
                                          height: 27.71*fem,
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.95*fem),
                                            child: Image.asset(
                                              'assets/page-1/images/icons-U69.png',
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
                                    // frame6PEV (I10:11586;10:2672;17:122)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(3*fem, 2.99*fem, 3*fem, 2.99*fem),
                                      height: double.infinity,
                                      child: Align(
                                        // iconographycaesarzknGp5 (I10:11586;10:2672;17:123)
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          width: 30*fem,
                                          height: 29.86*fem,
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16.15*fem),
                                            child: Image.asset(
                                              'assets/page-1/images/iconography-caesarzkn-ded.png',
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
                                    // frame7sos (I10:11586;10:2672;17:125)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(3.05*fem, 1.5*fem, 3*fem, 1.5*fem),
                                      height: double.infinity,
                                      child: Align(
                                        // iconographycaesarzknksf (I10:11586;10:2672;17:126)
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          width: 29.95*fem,
                                          height: 31.5*fem,
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17.5*fem),
                                            child: ElevatedButton(
                                              child: Image.asset(
                                                'assets/page-1/images/iconography-caesarzkn-pWh.png',
                                                width: 29.95*fem,
                                                height: 31.5*fem,
                                              ),
                                              onPressed: (){
                                                Navigator.pop(context);
                                              },
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
                                    // frame9Pfj (I10:11586;10:2672;17:138)
                                    onPressed: () {},
                                    style: TextButton.styleFrom (
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(3.38*fem, 3.41*fem, 3.38*fem, 3.41*fem),
                                      height: double.infinity,
                                      child: Align(
                                        // iconsVTs (I10:11586;10:2672;17:139)
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          width: 29.25*fem,
                                          height: 29.25*fem,
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.94*fem),
                                            child: Image.asset(
                                              'assets/page-1/images/icons-zVB.png',
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
                                  Container(
                                    // frame8Yh3 (I10:11586;10:2672;17:128)
                                    padding: EdgeInsets.fromLTRB(3.33*fem, 3.6*fem, 3.33*fem, 3.6*fem),
                                    height: double.infinity,
                                    child: Align(
                                      // icons4fP (I10:11586;10:2672;17:129)
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                        width: 29.34*fem,
                                        height: 28.8*fem,
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                          child: Image.asset(
                                            'assets/page-1/images/icons-EQV.png',
                                            width: 29.34*fem,
                                            height: 28.8*fem,
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
                            // ioshomeindicatorsfKLR (I10:11586;10:2672;17:132)
                            padding: EdgeInsets.fromLTRB(121*fem, 21*fem, 120*fem, 8*fem),
                            width: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xff202024),
                            ),
                            child: Center(
                              // homeindicatorcaR (I10:11586;10:2672;17:132;2:2)
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
          ],
        ),
      ),
          );
  }
}