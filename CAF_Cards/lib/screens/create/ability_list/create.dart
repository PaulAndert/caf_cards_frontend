import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class CreateAbilityList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // createabilitylisthUZ (26:2363)
        padding: EdgeInsets.fromLTRB(30*fem, 42*fem, 22*fem, 8*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // iconographycaesarzkn7YH (26:2395)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 309*fem, 17*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 32*fem,
                  height: 32*fem,
                  child: Image.asset(
                    'assets/page-1/images/iconography-caesarzkn-9T3.png',
                    width: 32*fem,
                    height: 32*fem,
                  ),
                ),
              ),
            ),
            Container(
              // group18iny (111:1657)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 32*fem),
              width: 336*fem,
              height: 125*fem,
              child: Stack(
                children: [
                  Positioned(
                    // group17PeD (111:1645)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      width: 336*fem,
                      height: 125*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroup4rzxTty (T1SqugGkxiCYyoSsvY4RZX)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 59*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vector8strokeLSy (111:1646)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 270*fem, 0*fem),
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-uD7.png',
                                    width: 33*fem,
                                    height: 33*fem,
                                  ),
                                ),
                                Container(
                                  // vector8strokebNu (111:1647)
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-xN1.png',
                                    width: 33*fem,
                                    height: 33*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupbxjzhRw (T1Sr2Fv8NxoUrR89rXBxJZ)
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vector8strokezR3 (111:1650)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 270*fem, 0*fem),
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-C5j.png',
                                    width: 33*fem,
                                    height: 33*fem,
                                  ),
                                ),
                                Container(
                                  // vector8strokeU5K (111:1649)
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-MXB.png',
                                    width: 33*fem,
                                    height: 33*fem,
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
                    // draw2cardswhenplayedy25 (111:1651)
                    left: 53*fem,
                    top: 51.5*fem,
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
                    // atomgood2MHX (111:1653)
                    left: 303*fem,
                    top: 92*fem,
                    child: Align(
                      child: SizedBox(
                        width: 25*fem,
                        height: 25*fem,
                        child: Image.asset(
                          'assets/page-1/images/atomgood-2-kSH.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // QFo (111:1655)
                    left: 286.5*fem,
                    top: 93.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 13*fem,
                          height: 22*fem,
                          child: Text(
                            '4',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'SF Pro Display',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.9166666667*ffem/fem,
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
              // group19DDF (111:1685)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 131*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // group174Ds (111:1686)
                        left: 0*fem,
                        top: 0*fem,
                        child: Container(
                          width: 336*fem,
                          height: 125*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupkxsy7xq (T1SrLqDWfHziAUvQirkxSy)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 59*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // vector8strokepsF (111:1687)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 270*fem, 0*fem),
                                      width: 33*fem,
                                      height: 33*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-8-stroke-E9j.png',
                                        width: 33*fem,
                                        height: 33*fem,
                                      ),
                                    ),
                                    Container(
                                      // vector8strokeVCh (111:1688)
                                      width: 33*fem,
                                      height: 33*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-8-stroke-rhb.png',
                                        width: 33*fem,
                                        height: 33*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupphftz9T (T1SrRzjaFk92x5XdxbPhfT)
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // vector8strokeW7o (111:1690)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 270*fem, 0*fem),
                                      width: 33*fem,
                                      height: 33*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-8-stroke-jxq.png',
                                        width: 33*fem,
                                        height: 33*fem,
                                      ),
                                    ),
                                    Container(
                                      // vector8strokeb9F (111:1689)
                                      width: 33*fem,
                                      height: 33*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-8-stroke-Vxq.png',
                                        width: 33*fem,
                                        height: 33*fem,
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
                        // roundstartget1661 (111:1691)
                        left: 113*fem,
                        top: 40.5*fem,
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
                        // group24tGm (111:1869)
                        left: 286.5*fem,
                        top: 92*fem,
                        child: Container(
                          width: 41.5*fem,
                          height: 25*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                // kZs (111:1693)
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.5*fem, 0*fem),
                                  child: Text(
                                    '7',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'SF Pro Display',
                                      fontSize: 24*ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 0.9166666667*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // atomgood2QPX (111:1692)
                                width: 25*fem,
                                height: 25*fem,
                                child: Image.asset(
                                  'assets/page-1/images/atomgood-2-nZb.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        // group16WBf (111:1721)
                        left: 180*fem,
                        top: 59*fem,
                        child: Align(
                          child: SizedBox(
                            width: 33*fem,
                            height: 33*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-16.png',
                              width: 33*fem,
                              height: 33*fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // group20LgV (111:1694)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 32*fem),
              width: 336*fem,
              height: 125*fem,
              child: Stack(
                children: [
                  Positioned(
                    // group17DkH (111:1695)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      width: 336*fem,
                      height: 125*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupq3cqVho (T1Srr4soGMwKRPiRkqq3cq)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 59*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vector8strokeoCh (111:1696)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 270*fem, 0*fem),
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-Q2H.png',
                                    width: 33*fem,
                                    height: 33*fem,
                                  ),
                                ),
                                Container(
                                  // vector8stroketE9 (111:1697)
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-wRF.png',
                                    width: 33*fem,
                                    height: 33*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupab8zb8Z (T1SrwQ4FRjK1PpDJqfab8Z)
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vector8strokeu9F (111:1699)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 270*fem, 0*fem),
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-iKX.png',
                                    width: 33*fem,
                                    height: 33*fem,
                                  ),
                                ),
                                Container(
                                  // vector8strokey97 (111:1698)
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-xBF.png',
                                    width: 33*fem,
                                    height: 33*fem,
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
                    // deal1damagetoaselectedenemygJR (111:1700)
                    left: 14.5*fem,
                    top: 51.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 307*fem,
                          height: 22*fem,
                          child: Text(
                            'Deal 1 damage to a selected enemy',
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
                    // atomgood25rM (111:1701)
                    left: 303*fem,
                    top: 92*fem,
                    child: Align(
                      child: SizedBox(
                        width: 25*fem,
                        height: 25*fem,
                        child: Image.asset(
                          'assets/page-1/images/atomgood-2-5n5.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // AN1 (111:1702)
                    left: 286.5*fem,
                    top: 93.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 13*fem,
                          height: 22*fem,
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'SF Pro Display',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.9166666667*ffem/fem,
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
              // group21PkZ (111:1703)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 32*fem),
              width: 336*fem,
              height: 125*fem,
              child: Stack(
                children: [
                  Positioned(
                    // group17Un1 (111:1704)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      width: 336*fem,
                      height: 125*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroup1db3Mau (T1SsCDxswQpX1JUPAX1db3)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 59*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vector8strokeeK7 (111:1705)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 270*fem, 0*fem),
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-gry.png',
                                    width: 33*fem,
                                    height: 33*fem,
                                  ),
                                ),
                                Container(
                                  // vector8strokeXNu (111:1706)
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-qMw.png',
                                    width: 33*fem,
                                    height: 33*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroup9al5qeV (T1SsJocFMfRSsv9f6W9AL5)
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vector8strokeNPX (111:1708)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 270*fem, 0*fem),
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-jKs.png',
                                    width: 33*fem,
                                    height: 33*fem,
                                  ),
                                ),
                                Container(
                                  // vector8strokeFy7 (111:1707)
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-cxd.png',
                                    width: 33*fem,
                                    height: 33*fem,
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
                    // roundstartdraw1cardkus (111:1709)
                    left: 113*fem,
                    top: 40.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 110*fem,
                          height: 44*fem,
                          child: Text(
                            'Round start:\nDraw 1 card',
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
                    // atomgood2z3X (111:1710)
                    left: 303*fem,
                    top: 92*fem,
                    child: Align(
                      child: SizedBox(
                        width: 25*fem,
                        height: 25*fem,
                        child: Image.asset(
                          'assets/page-1/images/atomgood-2-e2h.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // SRK (111:1711)
                    left: 286.5*fem,
                    top: 93.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 13*fem,
                          height: 22*fem,
                          child: Text(
                            '6',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'SF Pro Display',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.9166666667*ffem/fem,
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
              // group22V8h (111:1712)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
              width: 336*fem,
              height: 125*fem,
              child: Stack(
                children: [
                  Positioned(
                    // group17aR3 (111:1713)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      width: 336*fem,
                      height: 125*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupbnbffSV (T1SsdDFF55PK1A4G7kbNBF)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 59*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vector8strokeAe9 (111:1714)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 270*fem, 0*fem),
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-nPP.png',
                                    width: 33*fem,
                                    height: 33*fem,
                                  ),
                                ),
                                Container(
                                  // vector8stroke1Ps (111:1715)
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-6yB.png',
                                    width: 33*fem,
                                    height: 33*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupfif7uEM (T1SsiHw7P4uxCLifRwfiF7)
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // vector8stroke1YH (111:1717)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 270*fem, 0*fem),
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-zVB.png',
                                    width: 33*fem,
                                    height: 33*fem,
                                  ),
                                ),
                                Container(
                                  // vector8stroke4WZ (111:1716)
                                  width: 33*fem,
                                  height: 33*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-gpd.png',
                                    width: 33*fem,
                                    height: 33*fem,
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
                    // copythestatsofaselectedcardA3o (111:1718)
                    left: 27.5*fem,
                    top: 51.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 281*fem,
                          height: 22*fem,
                          child: Text(
                            'Copy the stats of a selected card',
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
                    // atomgood2Y4M (111:1719)
                    left: 303*fem,
                    top: 92*fem,
                    child: Align(
                      child: SizedBox(
                        width: 25*fem,
                        height: 25*fem,
                        child: Image.asset(
                          'assets/page-1/images/atomgood-2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // boK (111:1720)
                    left: 286.5*fem,
                    top: 93.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 13*fem,
                          height: 22*fem,
                          child: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'SF Pro Display',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.9166666667*ffem/fem,
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
          ],
        ),
      ),
          );
  }
}