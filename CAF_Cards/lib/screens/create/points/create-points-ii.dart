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
        // createpointsiirWy (111:1727)
        padding: EdgeInsets.fromLTRB(9*fem, 42*fem, 9*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupebrp58q (T1T22tQKZqVBvPg2JYEBRP)
              margin: EdgeInsets.fromLTRB(21*fem, 0*fem, 3*fem, 8*fem),
              width: double.infinity,
              height: 45*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupeuvhWzq (T1T2C8dv4mmxnDbjmwEUvH)
                    padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.5*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // iconographycaesarzknBr5 (111:1754)
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
                                'assets/page-1/images/iconography-caesarzkn-14Z.png',
                                width: 32*fem,
                                height: 32*fem,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          // nay (111:1765)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 8.5*fem, 0*fem, 0*fem),
                            child: Text(
                              '0/10',
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
                    // atomgood2oky (111:1873)
                    width: 45*fem,
                    height: 45*fem,
                    child: Image.asset(
                      'assets/page-1/images/atomgood-2-QjP.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // group6HRF (111:1728)
              margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 6.14*fem, 22*fem),
              width: double.infinity,
              height: 576*fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle387v5 (111:1729)
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
                    // group9w8R (111:1731)
                    left: 293*fem,
                    top: 3*fem,
                    child: Align(
                      child: SizedBox(
                        width: 66.86*fem,
                        height: 66.86*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-9-b5w.png',
                          width: 66.86*fem,
                          height: 66.86*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // krZ (111:1735)
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
                    // roundstartget1kk5 (111:1736)
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
                    // topfdergierkNh (111:1737)
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
                    // asmallrobotthatlovestocleanYpM (111:1738)
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
                    // grafik481s (111:1739)
                    left: 28*fem,
                    top: 66*fem,
                    child: Align(
                      child: SizedBox(
                        width: 302*fem,
                        height: 202*fem,
                        child: Image.asset(
                          'assets/page-1/images/grafik-4-Z65.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group15PTb (111:1740)
                    left: 45*fem,
                    top: 523.1428222656*fem,
                    child: Container(
                      width: 64.58*fem,
                      height: 46.36*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            // rMB (111:1746)
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
                            // group7HhP (111:1741)
                            width: 32.83*fem,
                            height: 46.36*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-7-qnM.png',
                              width: 32.83*fem,
                              height: 46.36*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group14mMf (111:1747)
                    left: 248*fem,
                    top: 522*fem,
                    child: Container(
                      width: 81*fem,
                      height: 50*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            // QvR (111:1748)
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
                            // group8aCd (111:1749)
                            width: 50*fem,
                            height: 50*fem,
                            child: Image.asset(
                              'assets/page-1/images/group-8-vDT.png',
                              width: 50*fem,
                              height: 50*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group16ZaM (111:1755)
                    left: 22*fem,
                    top: 346*fem,
                    child: Align(
                      child: SizedBox(
                        width: 309*fem,
                        height: 145*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-16-KxZ.png',
                          width: 309*fem,
                          height: 145*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iconographycaesarzknyty (111:1761)
                    left: 331*fem,
                    top: 538*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 20*fem,
                        child: Image.asset(
                          'assets/page-1/images/iconography-caesarzkn-sAD.png',
                          width: 20*fem,
                          height: 20*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iconographycaesarzknQzH (111:1762)
                    left: 118*fem,
                    top: 538*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 20*fem,
                        child: Image.asset(
                          'assets/page-1/images/iconography-caesarzkn-BHo.png',
                          width: 20*fem,
                          height: 20*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iconographycaesarzknFk1 (111:1763)
                    left: 212*fem,
                    top: 547*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 2*fem,
                        child: Image.asset(
                          'assets/page-1/images/iconography-caesarzkn-R6u.png',
                          width: 20*fem,
                          height: 2*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iconographycaesarzknhM7 (111:1764)
                    left: 13*fem,
                    top: 547*fem,
                    child: Align(
                      child: SizedBox(
                        width: 20*fem,
                        height: 2*fem,
                        child: Image.asset(
                          'assets/page-1/images/iconography-caesarzkn-wEM.png',
                          width: 20*fem,
                          height: 2*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // pictureMAm (111:1766)
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
                    // buttonscellZGq (111:1767)
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
                            'assets/page-1/images/buttons-cell-BZf.png',
                            width: 44*fem,
                            height: 44*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // walle11mdo (111:1769)
                    left: 31*fem,
                    top: 66*fem,
                    child: Align(
                      child: SizedBox(
                        width: 299*fem,
                        height: 202*fem,
                        child: Image.asset(
                          'assets/page-1/images/walle1-1-XvV.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group23qtZ (111:1863)
                    left: 188*fem,
                    top: 415*fem,
                    child: Align(
                      child: SizedBox(
                        width: 33*fem,
                        height: 33*fem,
                        child: Image.asset(
                          'assets/page-1/images/group-23.png',
                          width: 33*fem,
                          height: 33*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group256Zb (111:1870)
                    left: 280.5*fem,
                    top: 355*fem,
                    child: Container(
                      width: 41.5*fem,
                      height: 25*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            // nBX (111:1872)
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
                            // atomgood2EpD (111:1871)
                            width: 25*fem,
                            height: 25*fem,
                            child: Image.asset(
                              'assets/page-1/images/atomgood-2-rs7.png',
                              fit: BoxFit.cover,
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
              // buttonsprimerywyX (111:1768)
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
              ),
            ),
            Container(
              // tabbarios5tabssffo3 (I111:1753;10:2672)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // iconrowaQD (I111:1753;10:2672;17:118)
                    padding: EdgeInsets.fromLTRB(17*fem, 1*fem, 18*fem, 0*fem),
                    width: double.infinity,
                    height: 53*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff202024),
                    ),
                    child: Container(
                      // autogroupgjnm4KP (T1T35wUvaCSZq1ZfzNgjNM)
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            // frame5kCD (I111:1753;10:2672;17:119)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(4.17*fem, 4.17*fem, 4.13*fem, 4.17*fem),
                              height: double.infinity,
                              child: Align(
                                // iconspC5 (I111:1753;10:2672;17:120)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 27.71*fem,
                                  height: 27.71*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.95*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/icons-t7f.png',
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
                            // frame6RBs (I111:1753;10:2672;17:122)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3*fem, 2.99*fem, 3*fem, 2.99*fem),
                              height: double.infinity,
                              child: Align(
                                // iconographycaesarzkn5XK (I111:1753;10:2672;17:123)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 30*fem,
                                  height: 29.86*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16.15*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/iconography-caesarzkn-QZB.png',
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
                            // frame7UpM (I111:1753;10:2672;17:125)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3.05*fem, 1.5*fem, 3*fem, 1.5*fem),
                              height: double.infinity,
                              child: Align(
                                // iconographycaesarzknABP (I111:1753;10:2672;17:126)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 29.95*fem,
                                  height: 31.5*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17.5*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/iconography-caesarzkn-gp5.png',
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
                            // frame99Z7 (I111:1753;10:2672;17:138)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3.38*fem, 3.41*fem, 3.38*fem, 3.41*fem),
                              height: double.infinity,
                              child: Align(
                                // iconsS2R (I111:1753;10:2672;17:139)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 29.25*fem,
                                  height: 29.25*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15.94*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/icons-XeD.png',
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
                            // frame8s7j (I111:1753;10:2672;17:128)
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(3.33*fem, 3.6*fem, 3.33*fem, 3.6*fem),
                              height: double.infinity,
                              child: Align(
                                // iconsx9B (I111:1753;10:2672;17:129)
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: 29.34*fem,
                                  height: 28.8*fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                    child: Image.asset(
                                      'assets/page-1/images/icons-E5j.png',
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
                    // ioshomeindicatorsfZuf (I111:1753;10:2672;17:132)
                    padding: EdgeInsets.fromLTRB(121*fem, 21*fem, 120*fem, 8*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff202024),
                    ),
                    child: Center(
                      // homeindicatorqsB (I111:1753;10:2672;17:132;2:2)
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