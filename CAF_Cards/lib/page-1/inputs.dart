import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 810;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // inputs4K7 (26:1538)
        width: double.infinity,
        height: 1428*fem,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff007aff)),
          borderRadius: BorderRadius.circular(12*fem),
          gradient: LinearGradient (
            begin: Alignment(1, -0.014),
            end: Alignment(-1, -0.014),
            colors: <Color>[Color(0xff000000), Color(0xff000000), Color(0xffffffff), Color(0xffffffff), Color(0xffffffff)],
            stops: <double>[0, 0.504, 0.508, 0.714, 1],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              // typeframestateemptythemelighty (26:1539)
              left: 20*fem,
              top: 20*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 13.5*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 116*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewtitleAus (26:1540)
                      padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                      width: double.infinity,
                      height: 24.5*fem,
                      child: Container(
                        // rowg7X (I26:1540;1881:9545)
                        width: 34*fem,
                        height: 23*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // PGq (I26:1540;1881:9455;1388:23)
                              left: 5.5*fem,
                              top: 0*fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 11*fem,
                                    height: 23*fem,
                                    child: Text(
                                      '􀑋',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // titleBiV (I26:1540;138:19)
                              left: 0*fem,
                              top: 0.5*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 34*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Title',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // input1xR (26:1541)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                      width: double.infinity,
                      height: 44*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // frameXA5 (26:1542)
                            left: 16*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 343*fem,
                                height: 44*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    border: Border.all(color: Color(0xffe5e5ea)),
                                    color: Color(0xfff9f9f9),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // tableviewrowNRb (26:1543)
                            left: 16*fem,
                            top: -1*fem,
                            child: Container(
                              width: 343*fem,
                              height: 45*fem,
                              child: Container(
                                // autogroupmt4hsNM (T1TUWi7b5BVTEvhTiTMT4H)
                                padding: EdgeInsets.fromLTRB(16*fem, 7*fem, 15*fem, 5*fem),
                                width: double.infinity,
                                height: 44*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // titleLWq (I26:1543;69:22;69:6)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 221*fem, 0*fem),
                                      child: Text(
                                        'Placeholder',
                                        style: SafeGoogleFont (
                                          'SF Pro Text',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2941176471*ffem/fem,
                                          letterSpacing: -0.4099999964*fem,
                                          color: Color(0x4c3c3c43),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // oQR (I26:1543;69:21;135:50;557:403)
                                      child: Text(
                                        '􀆊',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 2*ffem/fem,
                                          letterSpacing: 0.1800000072*fem,
                                          color: Color(0xffd1d1d6),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptionV2M (I26:1544;138:21)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group. ',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0x993c3c43),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typecellstateemptythemelight96 (26:1545)
              left: 20*fem,
              top: 836*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 79*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewrowm8H (26:1546)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupvdfbEnZ (T1TVCc8mzzBSSgVEv5vdFb)
                            padding: EdgeInsets.fromLTRB(16*fem, 7*fem, 15*fem, 5*fem),
                            width: double.infinity,
                            height: 44*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // titleWzy (I26:1546;69:22;69:6)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 253*fem, 0*fem),
                                  child: Text(
                                    'Placeholder',
                                    style: SafeGoogleFont (
                                      'SF Pro Text',
                                      fontSize: 17*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2941176471*ffem/fem,
                                      letterSpacing: -0.4099999964*fem,
                                      color: Color(0x4c3c3c43),
                                    ),
                                  ),
                                ),
                                Center(
                                  // ydf (I26:1546;69:21;135:50;557:403)
                                  child: Text(
                                    '􀆊',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'SF Pro Display',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 2*ffem/fem,
                                      letterSpacing: 0.1800000072*fem,
                                      color: Color(0xffd1d1d6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // separatorsDF (I26:1546;270:14)
                            width: 375*fem,
                            height: 1*fem,
                            child: Image.asset(
                              'assets/page-1/images/separator-EAq.png',
                              width: 375*fem,
                              height: 1*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptionZ65 (I26:1547;138:21)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0x993c3c43),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typecellstatefocusthemelightDR (26:1548)
              left: 20*fem,
              top: 935*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 79*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewrowF7K (26:1549)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupkppbrN1 (T1TVb6VJctHke9iLAzkPPB)
                            padding: EdgeInsets.fromLTRB(16*fem, 7*fem, 15*fem, 5*fem),
                            width: double.infinity,
                            height: 44*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // titles2D (I26:1549;69:22;69:6)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 249*fem, 0*fem),
                                  child: RichText(
                                    text: TextSpan(
                                      style: SafeGoogleFont (
                                        'SF Pro Text',
                                        fontSize: 17*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2941176471*ffem/fem,
                                        letterSpacing: -0.4099999964*fem,
                                        color: Color(0x4c3c3c43),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '|',
                                          style: SafeGoogleFont (
                                            'SF Pro Text',
                                            fontSize: 17*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2941176471*ffem/fem,
                                            letterSpacing: -0.4099999964*fem,
                                            color: Color(0xff007aff),
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Placeholder',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Center(
                                  // Hdf (I26:1549;69:21;135:50;557:403)
                                  child: Text(
                                    '􀆊',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'SF Pro Display',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 2*ffem/fem,
                                      letterSpacing: 0.1800000072*fem,
                                      color: Color(0xffd1d1d6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // separatorMtR (I26:1549;270:14)
                            width: 375*fem,
                            height: 1*fem,
                            child: Image.asset(
                              'assets/page-1/images/separator-2uB.png',
                              width: 375*fem,
                              height: 1*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptiondb3 (I26:1550;138:21)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0x993c3c43),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typecellstatefocustextthemelig (26:1551)
              left: 20*fem,
              top: 1034*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 79*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewrowW2Z (26:1552)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      width: double.infinity,
                      height: 45*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // titleZmX (I26:1552;69:22;69:6)
                            left: 16*fem,
                            top: 12*fem,
                            child: Align(
                              child: SizedBox(
                                width: 32*fem,
                                height: 22*fem,
                                child: RichText(
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'SF Pro Text',
                                      fontSize: 17*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2941176471*ffem/fem,
                                      letterSpacing: -0.4099999964*fem,
                                      color: Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Text',
                                      ),
                                      TextSpan(
                                        text: '|',
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2941176471*ffem/fem,
                                          letterSpacing: -0.4099999964*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // tableviewrowrightQvZ (I26:1552;69:21)
                            left: 279*fem,
                            top: 1*fem,
                            child: Container(
                              width: 88*fem,
                              height: 44*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // buttonscellu6d (I26:1552;69:21;1916:5372)
                                    width: 44*fem,
                                    height: double.infinity,
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          '􀑋',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'SF Pro Display',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575*ffem/fem,
                                            color: Color(0xff007aff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // buttonscellXdo (I26:1552;69:21;1389:110)
                                    width: 44*fem,
                                    height: double.infinity,
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          '􀑋',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'SF Pro Display',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575*ffem/fem,
                                            color: Color(0xff007aff),
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
                            // separatorN8d (I26:1552;270:14)
                            left: 0*fem,
                            top: 44*fem,
                            child: Align(
                              child: SizedBox(
                                width: 375*fem,
                                height: 1*fem,
                                child: Image.asset(
                                  'assets/page-1/images/separator-htR.png',
                                  width: 375*fem,
                                  height: 1*fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptionRsb (I26:1553;138:21)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0x993c3c43),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typecellstateerrorthemelightgo (26:1554)
              left: 20*fem,
              top: 1133*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 79*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewrowLNH (26:1555)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      width: double.infinity,
                      height: 45*fem,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // titlec4u (I26:1555;69:22;69:6)
                            left: 16*fem,
                            top: 12*fem,
                            child: Align(
                              child: SizedBox(
                                width: 32*fem,
                                height: 22*fem,
                                child: RichText(
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'SF Pro Text',
                                      fontSize: 17*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2941176471*ffem/fem,
                                      letterSpacing: -0.4099999964*fem,
                                      color: Color(0xff000000),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Text',
                                      ),
                                      TextSpan(
                                        text: '|',
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2941176471*ffem/fem,
                                          letterSpacing: -0.4099999964*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // tableviewrowrighttAq (I26:1555;69:21)
                            left: 279*fem,
                            top: 1*fem,
                            child: Container(
                              width: 88*fem,
                              height: 44*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // buttonscellN61 (I26:1555;69:21;1916:5372)
                                    width: 44*fem,
                                    height: double.infinity,
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          '􀑋',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'SF Pro Display',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575*ffem/fem,
                                            color: Color(0xff007aff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // buttonscellPmo (I26:1555;69:21;1389:110)
                                    width: 44*fem,
                                    height: double.infinity,
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          '􀑋',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'SF Pro Display',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575*ffem/fem,
                                            color: Color(0xff007aff),
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
                            // separatorehj (I26:1555;270:14)
                            left: 0*fem,
                            top: 44*fem,
                            child: Align(
                              child: SizedBox(
                                width: 375*fem,
                                height: 1*fem,
                                child: Image.asset(
                                  'assets/page-1/images/separator-DWd.png',
                                  width: 375*fem,
                                  height: 1*fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptionguK (I26:1556;138:21)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0xffff3b30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typecellstatetextthemelightwqF (26:1557)
              left: 20*fem,
              top: 1232*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 79*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewrowoMf (26:1558)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 0*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // titleet5 (I26:1558;69:22;69:6)
                            margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 10*fem),
                            child: Text(
                              'Text',
                              style: SafeGoogleFont (
                                'SF Pro Text',
                                fontSize: 17*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2941176471*ffem/fem,
                                letterSpacing: -0.4099999964*fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // separatorKDX (I26:1558;270:14)
                            width: 375*fem,
                            height: 1*fem,
                            child: Image.asset(
                              'assets/page-1/images/separator-HJD.png',
                              width: 375*fem,
                              height: 1*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptioncTX (I26:1559;138:21)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typecellstatedisablethemelight (26:1560)
              left: 20*fem,
              top: 1331*fem,
              child: Opacity(
                opacity: 0.32,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                  width: 375*fem,
                  height: 79*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // tableviewrowhtH (26:1561)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                        padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 0*fem),
                        width: double.infinity,
                        decoration: BoxDecoration (
                          color: Color(0xffffffff),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // titlemt9 (I26:1561;69:22;69:6)
                              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 10*fem),
                              child: Text(
                                'Text',
                                style: SafeGoogleFont (
                                  'SF Pro Text',
                                  fontSize: 17*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2941176471*ffem/fem,
                                  letterSpacing: -0.4099999964*fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // separatorSzH (I26:1561;270:14)
                              width: 375*fem,
                              height: 1*fem,
                              child: Image.asset(
                                'assets/page-1/images/separator-56u.png',
                                width: 375*fem,
                                height: 1*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // description8MK (I26:1562;138:21)
                        margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                        child: Text(
                          'This is a sample description that sits below a group.',
                          style: SafeGoogleFont (
                            'SF Pro Text',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3846153846*ffem/fem,
                            letterSpacing: -0.0799999982*fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // typeframestatefocusthemelighty (26:1563)
              left: 20*fem,
              top: 156*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 13.5*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 116*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewtitlecvh (26:1564)
                      padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                      width: double.infinity,
                      height: 24.5*fem,
                      child: Container(
                        // rowKaD (I26:1564;1881:9545)
                        width: 34*fem,
                        height: 23*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // 1xq (I26:1564;1881:9455;1388:23)
                              left: 5.5*fem,
                              top: 0*fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 11*fem,
                                    height: 23*fem,
                                    child: Text(
                                      '􀑋',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // titleEah (I26:1564;138:19)
                              left: 0*fem,
                              top: 0.5*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 34*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Title',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // inputUV3 (26:1565)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                      width: double.infinity,
                      height: 44*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // frameany (26:1566)
                            left: 16*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 343*fem,
                                height: 44*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    border: Border.all(color: Color(0xff007aff)),
                                    color: Color(0xfff9f9f9),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // tableviewrowdmF (26:1567)
                            left: 16*fem,
                            top: -1*fem,
                            child: Container(
                              width: 343*fem,
                              height: 45*fem,
                              child: Container(
                                // autogroupbq7f8xu (T1TXBxzE2YFuCUhcWgbQ7F)
                                padding: EdgeInsets.fromLTRB(16*fem, 7*fem, 15*fem, 5*fem),
                                width: double.infinity,
                                height: 44*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // titleDUZ (I26:1567;69:22;69:6)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 217*fem, 0*fem),
                                      child: RichText(
                                        text: TextSpan(
                                          style: SafeGoogleFont (
                                            'SF Pro Text',
                                            fontSize: 17*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2941176471*ffem/fem,
                                            letterSpacing: -0.4099999964*fem,
                                            color: Color(0x4c3c3c43),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '|',
                                              style: SafeGoogleFont (
                                                'SF Pro Text',
                                                fontSize: 17*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2941176471*ffem/fem,
                                                letterSpacing: -0.4099999964*fem,
                                                color: Color(0xff007aff),
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Placeholder',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // 59P (I26:1567;69:21;135:50;557:403)
                                      child: Text(
                                        '􀆊',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 2*ffem/fem,
                                          letterSpacing: 0.1800000072*fem,
                                          color: Color(0xffd1d1d6),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptionM6u (I26:1568;138:21)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0x993c3c43),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typeframestatefocustextthemeli (26:1569)
              left: 20*fem,
              top: 292*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 13.5*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 116*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewtitlepub (26:1570)
                      padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                      width: double.infinity,
                      height: 24.5*fem,
                      child: Container(
                        // rowvhj (I26:1570;1881:9545)
                        width: 34*fem,
                        height: 23*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // ReV (I26:1570;1881:9455;1388:23)
                              left: 5.5*fem,
                              top: 0*fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 11*fem,
                                    height: 23*fem,
                                    child: Text(
                                      '􀑋',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // titleTr5 (I26:1570;138:19)
                              left: 0*fem,
                              top: 0.5*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 34*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Title',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // inputin1 (26:1571)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                      width: double.infinity,
                      height: 44*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // framed8H (26:1572)
                            left: 16*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 343*fem,
                                height: 44*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    border: Border.all(color: Color(0xff007aff)),
                                    color: Color(0xfff9f9f9),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // tableviewrowtK7 (26:1573)
                            left: 16*fem,
                            top: -1*fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(16*fem, 1*fem, 8*fem, 0*fem),
                              width: 343*fem,
                              height: 45*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // titlewHP (I26:1573;69:22;69:6)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 199*fem, 0*fem),
                                    child: RichText(
                                      text: TextSpan(
                                        style: SafeGoogleFont (
                                          'SF Pro Text',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2941176471*ffem/fem,
                                          letterSpacing: -0.4099999964*fem,
                                          color: Color(0xff000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Text',
                                          ),
                                          TextSpan(
                                            text: '|',
                                            style: SafeGoogleFont (
                                              'SF Pro Text',
                                              fontSize: 17*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2941176471*ffem/fem,
                                              letterSpacing: -0.4099999964*fem,
                                              color: Color(0xff007aff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // tableviewrowrightzey (I26:1573;69:21)
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // buttonscelluG9 (I26:1573;69:21;1916:5372)
                                          width: 44*fem,
                                          height: double.infinity,
                                          child: Center(
                                            child: Center(
                                              child: Text(
                                                '􀑋',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'SF Pro Display',
                                                  fontSize: 20*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2575*ffem/fem,
                                                  color: Color(0xff007aff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // buttonscellY4D (I26:1573;69:21;1389:110)
                                          width: 44*fem,
                                          height: double.infinity,
                                          child: Center(
                                            child: Center(
                                              child: Text(
                                                '􀑋',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont (
                                                  'SF Pro Display',
                                                  fontSize: 20*ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2575*ffem/fem,
                                                  color: Color(0xff007aff),
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
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptionzB7 (I26:1574;138:21)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0x993c3c43),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typeframestateerrorthemelightS (26:1575)
              left: 20*fem,
              top: 428*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 13.5*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 116*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewtitlesPK (26:1576)
                      padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                      width: double.infinity,
                      height: 24.5*fem,
                      child: Container(
                        // rowBQ1 (I26:1576;1881:9545)
                        width: 34*fem,
                        height: 23*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // u57 (I26:1576;1881:9455;1388:23)
                              left: 5.5*fem,
                              top: 0*fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 11*fem,
                                    height: 23*fem,
                                    child: Text(
                                      '􀑋',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // titleXcH (I26:1576;138:19)
                              left: 0*fem,
                              top: 0.5*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 34*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Title',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // inputaKf (26:1577)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                      width: double.infinity,
                      height: 44*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // framegtV (26:1578)
                            left: 16*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 343*fem,
                                height: 44*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    border: Border.all(color: Color(0xffff3b30)),
                                    color: Color(0xfff9f9f9),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // tableviewrowjbs (26:1579)
                            left: 16*fem,
                            top: -1*fem,
                            child: Container(
                              width: 343*fem,
                              height: 45*fem,
                              child: Container(
                                // autogroupjasy2ay (T1TYCSJoEg97iJHeaejaSy)
                                padding: EdgeInsets.fromLTRB(16*fem, 7*fem, 15*fem, 5*fem),
                                width: double.infinity,
                                height: 44*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // titleJHb (I26:1579;69:22;69:6)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 274*fem, 0*fem),
                                      child: Text(
                                        'Text',
                                        style: SafeGoogleFont (
                                          'SF Pro Text',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2941176471*ffem/fem,
                                          letterSpacing: -0.4099999964*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // N2Z (I26:1579;69:21;135:50;557:403)
                                      child: Text(
                                        '􀆊',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 2*ffem/fem,
                                          letterSpacing: 0.1800000072*fem,
                                          color: Color(0xffd1d1d6),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // description3Pb (I26:1580;138:21)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0xffff3b30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typeframestatetextthemelightJa (26:1581)
              left: 20*fem,
              top: 564*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 13.5*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 116*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewtitlejfj (26:1582)
                      padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                      width: double.infinity,
                      height: 24.5*fem,
                      child: Container(
                        // roweGu (I26:1582;1881:9545)
                        width: 34*fem,
                        height: 23*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // Z8y (I26:1582;1881:9455;1388:23)
                              left: 5.5*fem,
                              top: 0*fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 11*fem,
                                    height: 23*fem,
                                    child: Text(
                                      '􀑋',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // titleDDX (I26:1582;138:19)
                              left: 0*fem,
                              top: 0.5*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 34*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Title',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // input4zq (26:1583)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                      width: double.infinity,
                      height: 44*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // frameMyw (26:1584)
                            left: 16*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 343*fem,
                                height: 44*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    border: Border.all(color: Color(0xffe5e5ea)),
                                    color: Color(0xfff9f9f9),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // tableviewrow1Ho (26:1585)
                            left: 16*fem,
                            top: -1*fem,
                            child: Container(
                              width: 343*fem,
                              height: 45*fem,
                              child: Container(
                                // autogroupgroo7bj (T1TYiLce7R1BiWeGzzGroo)
                                padding: EdgeInsets.fromLTRB(16*fem, 7*fem, 15*fem, 5*fem),
                                width: double.infinity,
                                height: 44*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // titlebG1 (I26:1585;69:22;69:6)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 274*fem, 0*fem),
                                      child: Text(
                                        'Text',
                                        style: SafeGoogleFont (
                                          'SF Pro Text',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2941176471*ffem/fem,
                                          letterSpacing: -0.4099999964*fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // G7F (I26:1585;69:21;135:50;557:403)
                                      child: Text(
                                        '􀆊',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 2*ffem/fem,
                                          letterSpacing: 0.1800000072*fem,
                                          color: Color(0xffd1d1d6),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // description9gq (I26:1586;138:21)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0x993c3c43),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typeframestatedisablethemeligh (26:1587)
              left: 20*fem,
              top: 700*fem,
              child: Opacity(
                opacity: 0.32,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0*fem, 13.5*fem, 0*fem, 8*fem),
                  width: 375*fem,
                  height: 116*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // tableviewtitle2PF (26:1588)
                        padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                        width: double.infinity,
                        height: 24.5*fem,
                        child: Container(
                          // rowW3X (I26:1588;1881:9545)
                          width: 34*fem,
                          height: 23*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // 1W5 (I26:1588;1881:9455;1388:23)
                                left: 5.5*fem,
                                top: 0*fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 11*fem,
                                      height: 23*fem,
                                      child: Text(
                                        '􀑋',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 18*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // titleS5b (I26:1588;138:19)
                                left: 0*fem,
                                top: 0.5*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 34*fem,
                                    height: 22*fem,
                                    child: Text(
                                      'Title',
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
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // inputGqK (26:1589)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                        width: double.infinity,
                        height: 44*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // framemXB (26:1590)
                              left: 16*fem,
                              top: 0*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 343*fem,
                                  height: 44*fem,
                                  child: Container(
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(10*fem),
                                      border: Border.all(color: Color(0xffe5e5ea)),
                                      color: Color(0xfff9f9f9),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // tableviewrowE9s (26:1591)
                              left: 16*fem,
                              top: -1*fem,
                              child: Container(
                                width: 343*fem,
                                height: 45*fem,
                                child: Container(
                                  // autogroupczrdKh7 (T1TZBppqkr2TWkaweYcZrd)
                                  padding: EdgeInsets.fromLTRB(16*fem, 7*fem, 15*fem, 5*fem),
                                  width: double.infinity,
                                  height: 44*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // titleQCm (I26:1591;69:22;69:6)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 274*fem, 0*fem),
                                        child: Text(
                                          'Text',
                                          style: SafeGoogleFont (
                                            'SF Pro Text',
                                            fontSize: 17*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2941176471*ffem/fem,
                                            letterSpacing: -0.4099999964*fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        // TB3 (I26:1591;69:21;135:50;557:403)
                                        child: Text(
                                          '􀆊',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'SF Pro Display',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 2*ffem/fem,
                                            letterSpacing: 0.1800000072*fem,
                                            color: Color(0xffd1d1d6),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // description93s (I26:1592;138:21)
                        margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                        child: Text(
                          'This is a sample description that sits below a group.',
                          style: SafeGoogleFont (
                            'SF Pro Text',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3846153846*ffem/fem,
                            letterSpacing: -0.0799999982*fem,
                            color: Color(0x993c3c43),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // typeframestateemptythemedarkQE (26:1593)
              left: 415*fem,
              top: 20*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 13.5*fem, 0*fem, 0*fem),
                width: 375*fem,
                height: 116*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // tableviewtitleFFK (26:1594)
                      padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                      width: double.infinity,
                      height: 24.5*fem,
                      child: Container(
                        // rowZG1 (I26:1594;1881:10034)
                        width: 34*fem,
                        height: 23*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // 5VF (I26:1594;1881:10035;1388:23)
                              left: 5.5*fem,
                              top: 0*fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 11*fem,
                                    height: 23*fem,
                                    child: Text(
                                      '􀑋',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // title8Cd (I26:1594;1881:10036)
                              left: 0*fem,
                              top: 0.5*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 34*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Title',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // autogroupkxgyyDF (T1TZa9WyopuQXPvP4NKXgy)
                      padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 8*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // input51P (26:1595)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                            width: double.infinity,
                            height: 44*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff38383a)),
                              color: Color(0xff000000),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Container(
                              // tableviewrowY9s (26:1597)
                              padding: EdgeInsets.fromLTRB(16*fem, 7*fem, 15*fem, 5*fem),
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // titleE2h (I26:1597;752:1563;728:153)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 221*fem, 2*fem),
                                    child: Text(
                                      'Placeholder',
                                      style: SafeGoogleFont (
                                        'SF Pro Text',
                                        fontSize: 17*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2941176471*ffem/fem,
                                        letterSpacing: -0.4099999964*fem,
                                        color: Color(0x4cebebf5),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    // 6Ko (I26:1597;752:1564;728:211;557:403)
                                    child: Text(
                                      '􀆊',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 2*ffem/fem,
                                        letterSpacing: 0.1800000072*fem,
                                        color: Color(0xff3a3a3c),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            // descriptionBs3 (I26:1598;1881:10112)
                            'This is a sample description that sits below a group.',
                            style: SafeGoogleFont (
                              'SF Pro Text',
                              fontSize: 13*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3846153846*ffem/fem,
                              letterSpacing: -0.0799999982*fem,
                              color: Color(0x99ebebf5),
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
              // typecellstateemptythemedarkHQH (26:1599)
              left: 415*fem,
              top: 836*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 79*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewrowjXB (26:1600)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      width: double.infinity,
                      height: 44*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff1c1c1e),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // titlecay (I26:1600;752:1563;728:153)
                            left: 16*fem,
                            top: 11*fem,
                            child: Align(
                              child: SizedBox(
                                width: 81*fem,
                                height: 22*fem,
                                child: Text(
                                  'Placeholder',
                                  style: SafeGoogleFont (
                                    'SF Pro Text',
                                    fontSize: 17*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2941176471*ffem/fem,
                                    letterSpacing: -0.4099999964*fem,
                                    color: Color(0x4cebebf5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // 3wB (I26:1600;752:1564;728:211;557:403)
                            left: 350*fem,
                            top: 7*fem,
                            child: Center(
                              child: Align(
                                child: SizedBox(
                                  width: 10*fem,
                                  height: 32*fem,
                                  child: Text(
                                    '􀆊',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'SF Pro Display',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 2*ffem/fem,
                                      letterSpacing: 0.1800000072*fem,
                                      color: Color(0xff3a3a3c),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // separator5ss (I26:1600;752:1565)
                            left: 0*fem,
                            top: 43*fem,
                            child: Align(
                              child: SizedBox(
                                width: 375*fem,
                                height: 1*fem,
                                child: Image.asset(
                                  'assets/page-1/images/separator-fLy.png',
                                  width: 375*fem,
                                  height: 1*fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptionYFf (I26:1601;1881:10112)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0x99ebebf5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typecellstatefocusthemedark1uw (26:1602)
              left: 415*fem,
              top: 935*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 79*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewrowVKK (26:1603)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      width: double.infinity,
                      height: 44*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff1c1c1e),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // titlea5s (I26:1603;752:1563;728:153)
                            left: 16*fem,
                            top: 11*fem,
                            child: Align(
                              child: SizedBox(
                                width: 85*fem,
                                height: 22*fem,
                                child: RichText(
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'SF Pro Text',
                                      fontSize: 17*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2941176471*ffem/fem,
                                      letterSpacing: -0.4099999964*fem,
                                      color: Color(0x4cebebf5),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '|',
                                        style: SafeGoogleFont (
                                          'SF Pro Text',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2941176471*ffem/fem,
                                          letterSpacing: -0.4099999964*fem,
                                          color: Color(0xff007aff),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Placeholder',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // ynD (I26:1603;752:1564;728:211;557:403)
                            left: 350*fem,
                            top: 7*fem,
                            child: Center(
                              child: Align(
                                child: SizedBox(
                                  width: 10*fem,
                                  height: 32*fem,
                                  child: Text(
                                    '􀆊',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'SF Pro Display',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 2*ffem/fem,
                                      letterSpacing: 0.1800000072*fem,
                                      color: Color(0xff3a3a3c),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // separatorcaH (I26:1603;752:1565)
                            left: 0*fem,
                            top: 43*fem,
                            child: Align(
                              child: SizedBox(
                                width: 375*fem,
                                height: 1*fem,
                                child: Image.asset(
                                  'assets/page-1/images/separator-1z5.png',
                                  width: 375*fem,
                                  height: 1*fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptionsFK (I26:1604;1881:10112)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0x99ebebf5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typecellstatefocustextthemedar (26:1605)
              left: 415*fem,
              top: 1034*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 79*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewrowB9X (26:1606)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                      width: double.infinity,
                      height: 45*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff1c1c1e),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // titleeYu (I26:1606;752:1563;728:153)
                            left: 16*fem,
                            top: 11*fem,
                            child: Align(
                              child: SizedBox(
                                width: 34*fem,
                                height: 22*fem,
                                child: RichText(
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'SF Pro Display',
                                      fontSize: 17*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2941176471*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Text',
                                      ),
                                      TextSpan(
                                        text: '|',
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2941176471*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // tableviewrowrightXFK (I26:1606;752:1564)
                            left: 279*fem,
                            top: 1*fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(44*fem, 0*fem, 0*fem, 0*fem),
                              width: 88*fem,
                              height: 44*fem,
                              child: Container(
                                // buttonscellbky (I26:1606;752:1564;1392:1158)
                                width: double.infinity,
                                height: double.infinity,
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      '􀑋',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xff007aff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // separatorez9 (I26:1606;752:1565)
                            left: 0*fem,
                            top: 43*fem,
                            child: Align(
                              child: SizedBox(
                                width: 375*fem,
                                height: 1*fem,
                                child: Image.asset(
                                  'assets/page-1/images/separator.png',
                                  width: 375*fem,
                                  height: 1*fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptionK4h (I26:1607;1881:10112)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0x99ebebf5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typecellstateerrorthemedarkP4Z (26:1608)
              left: 415*fem,
              top: 1133*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 79*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewrow397 (26:1609)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                      width: double.infinity,
                      height: 45*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff1c1c1e),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // titleK6d (I26:1609;752:1563;728:153)
                            left: 16*fem,
                            top: 11*fem,
                            child: Align(
                              child: SizedBox(
                                width: 34*fem,
                                height: 22*fem,
                                child: RichText(
                                  text: TextSpan(
                                    style: SafeGoogleFont (
                                      'SF Pro Display',
                                      fontSize: 17*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2941176471*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Text',
                                      ),
                                      TextSpan(
                                        text: '|',
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2941176471*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // tableviewrowright29T (I26:1609;752:1564)
                            left: 279*fem,
                            top: 1*fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(44*fem, 0*fem, 0*fem, 0*fem),
                              width: 88*fem,
                              height: 44*fem,
                              child: Container(
                                // buttonscell6QD (I26:1609;752:1564;1392:1158)
                                width: double.infinity,
                                height: double.infinity,
                                child: Center(
                                  child: Center(
                                    child: Text(
                                      '􀑋',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xff007aff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // separatorML9 (I26:1609;752:1565)
                            left: 0*fem,
                            top: 43*fem,
                            child: Align(
                              child: SizedBox(
                                width: 375*fem,
                                height: 1*fem,
                                child: Image.asset(
                                  'assets/page-1/images/separator-rYd.png',
                                  width: 375*fem,
                                  height: 1*fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptionqFK (I26:1610;1881:10112)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0xffff3b30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typecellstatetextthemedarktjP (26:1611)
              left: 415*fem,
              top: 1232*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 79*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewrow87w (26:1612)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      width: double.infinity,
                      height: 44*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff1c1c1e),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // titleCdb (I26:1612;752:1563;728:153)
                            left: 16*fem,
                            top: 11*fem,
                            child: Align(
                              child: SizedBox(
                                width: 30*fem,
                                height: 22*fem,
                                child: Text(
                                  'Text',
                                  style: SafeGoogleFont (
                                    'SF Pro Display',
                                    fontSize: 17*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2941176471*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // SH3 (I26:1612;752:1564;728:211;557:403)
                            left: 350*fem,
                            top: 7*fem,
                            child: Center(
                              child: Align(
                                child: SizedBox(
                                  width: 10*fem,
                                  height: 32*fem,
                                  child: Text(
                                    '􀆊',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont (
                                      'SF Pro Display',
                                      fontSize: 16*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 2*ffem/fem,
                                      letterSpacing: 0.1800000072*fem,
                                      color: Color(0xff3a3a3c),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // separatorGG5 (I26:1612;752:1565)
                            left: 0*fem,
                            top: 43*fem,
                            child: Align(
                              child: SizedBox(
                                width: 375*fem,
                                height: 1*fem,
                                child: Image.asset(
                                  'assets/page-1/images/separator-CfF.png',
                                  width: 375*fem,
                                  height: 1*fem,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptionXxh (I26:1613;1881:10112)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0x99ebebf5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typecellstatedisablethemedarko (26:1614)
              left: 415*fem,
              top: 1331*fem,
              child: Opacity(
                opacity: 0.32,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                  width: 375*fem,
                  height: 79*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // tableviewrowqc1 (26:1615)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                        width: double.infinity,
                        height: 44*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff1c1c1e),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              // titleL2y (I26:1615;752:1563;728:153)
                              left: 16*fem,
                              top: 11*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 30*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Text',
                                    style: SafeGoogleFont (
                                      'SF Pro Display',
                                      fontSize: 17*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2941176471*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // yrd (I26:1615;752:1564;728:211;557:403)
                              left: 350*fem,
                              top: 7*fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 10*fem,
                                    height: 32*fem,
                                    child: Text(
                                      '􀆊',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 2*ffem/fem,
                                        letterSpacing: 0.1800000072*fem,
                                        color: Color(0xff3a3a3c),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // separatorQBF (I26:1615;752:1565)
                              left: 0*fem,
                              top: 43*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 375*fem,
                                  height: 1*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/separator-iEH.png',
                                    width: 375*fem,
                                    height: 1*fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // descriptionTvD (I26:1616;1881:10112)
                        margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                        child: Text(
                          'This is a sample description that sits below a group.',
                          style: SafeGoogleFont (
                            'SF Pro Text',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3846153846*ffem/fem,
                            letterSpacing: -0.0799999982*fem,
                            color: Color(0x99ebebf5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // typeframestatefocusthemedarkYA (26:1617)
              left: 415*fem,
              top: 156*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 13.5*fem, 0*fem, 0*fem),
                width: 375*fem,
                height: 116*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // tableviewtitlenb7 (26:1618)
                      padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                      width: double.infinity,
                      height: 24.5*fem,
                      child: Container(
                        // row661 (I26:1618;1881:10034)
                        width: 34*fem,
                        height: 23*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // Pau (I26:1618;1881:10035;1388:23)
                              left: 5.5*fem,
                              top: 0*fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 11*fem,
                                    height: 23*fem,
                                    child: Text(
                                      '􀑋',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // title1sB (I26:1618;1881:10036)
                              left: 0*fem,
                              top: 0.5*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 34*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Title',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // autogroupf53b4qT (T1Tbcb7dLMk8EU7Kp6f53b)
                      padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 8*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // inputa37 (26:1619)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                            width: double.infinity,
                            height: 44*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff007aff)),
                              color: Color(0xff000000),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Container(
                              // tableviewrowrFX (26:1621)
                              padding: EdgeInsets.fromLTRB(16*fem, 7*fem, 15*fem, 5*fem),
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // titleXsT (I26:1621;752:1563;728:153)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 217*fem, 2*fem),
                                    child: RichText(
                                      text: TextSpan(
                                        style: SafeGoogleFont (
                                          'SF Pro Text',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2941176471*ffem/fem,
                                          letterSpacing: -0.4099999964*fem,
                                          color: Color(0x4cebebf5),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '|',
                                            style: SafeGoogleFont (
                                              'SF Pro Text',
                                              fontSize: 17*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2941176471*ffem/fem,
                                              letterSpacing: -0.4099999964*fem,
                                              color: Color(0xff007aff),
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Placeholder',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Center(
                                    // aUM (I26:1621;752:1564;728:211;557:403)
                                    child: Text(
                                      '􀆊',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 2*ffem/fem,
                                        letterSpacing: 0.1800000072*fem,
                                        color: Color(0xff3a3a3c),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            // descriptionfEu (I26:1622;1881:10112)
                            'This is a sample description that sits below a group.',
                            style: SafeGoogleFont (
                              'SF Pro Text',
                              fontSize: 13*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3846153846*ffem/fem,
                              letterSpacing: -0.0799999982*fem,
                              color: Color(0x99ebebf5),
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
              // typeframestatefocustextthemeda (26:1623)
              left: 415*fem,
              top: 292*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 13.5*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 116*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewtitleaFP (26:1624)
                      padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                      width: double.infinity,
                      height: 24.5*fem,
                      child: Container(
                        // rowskH (I26:1624;1881:10034)
                        width: 34*fem,
                        height: 23*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // PTj (I26:1624;1881:10035;1388:23)
                              left: 5.5*fem,
                              top: 0*fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 11*fem,
                                    height: 23*fem,
                                    child: Text(
                                      '􀑋',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // titleRvD (I26:1624;1881:10036)
                              left: 0*fem,
                              top: 0.5*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 34*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Title',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // inputg5T (26:1625)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                      width: double.infinity,
                      height: 44*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // framemch (26:1626)
                            left: 16*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 343*fem,
                                height: 44*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    border: Border.all(color: Color(0xff007aff)),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // tableviewrowd97 (26:1627)
                            left: 16*fem,
                            top: 0*fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(16*fem, 1*fem, 8*fem, 0*fem),
                              width: 343*fem,
                              height: 45*fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // titleVh7 (I26:1627;752:1563;728:153)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 199*fem, 2*fem),
                                    child: RichText(
                                      text: TextSpan(
                                        style: SafeGoogleFont (
                                          'SF Pro Text',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2941176471*ffem/fem,
                                          letterSpacing: -0.4099999964*fem,
                                          color: Color(0xffffffff),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Text',
                                          ),
                                          TextSpan(
                                            text: '|',
                                            style: SafeGoogleFont (
                                              'SF Pro Text',
                                              fontSize: 17*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2941176471*ffem/fem,
                                              letterSpacing: -0.4099999964*fem,
                                              color: Color(0xff007aff),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // tableviewrowright9fB (I26:1627;752:1564)
                                    padding: EdgeInsets.fromLTRB(44*fem, 0*fem, 0*fem, 0*fem),
                                    width: 88*fem,
                                    height: double.infinity,
                                    child: Container(
                                      // buttonscellf7j (I26:1627;752:1564;1392:1158)
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Center(
                                        child: Center(
                                          child: Text(
                                            '􀑋',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'SF Pro Display',
                                              fontSize: 20*ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2575*ffem/fem,
                                              color: Color(0xff007aff),
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
                        ],
                      ),
                    ),
                    Container(
                      // descriptionh4R (I26:1628;1881:10112)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0x99ebebf5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typeframestateerrorthemedarkYa (26:1629)
              left: 415*fem,
              top: 428*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 13.5*fem, 0*fem, 8*fem),
                width: 375*fem,
                height: 116*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // tableviewtitleanR (26:1630)
                      padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                      width: double.infinity,
                      height: 24.5*fem,
                      child: Container(
                        // rowtYD (I26:1630;1881:10034)
                        width: 34*fem,
                        height: 23*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // Coo (I26:1630;1881:10035;1388:23)
                              left: 5.5*fem,
                              top: 0*fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 11*fem,
                                    height: 23*fem,
                                    child: Text(
                                      '􀑋',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // titledu7 (I26:1630;1881:10036)
                              left: 0*fem,
                              top: 0.5*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 34*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Title',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // inputHyf (26:1631)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                      width: double.infinity,
                      height: 44*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // framebjT (26:1632)
                            left: 16*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 343*fem,
                                height: 44*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(10*fem),
                                    border: Border.all(color: Color(0xffff3b30)),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // tableviewrowRiV (26:1633)
                            left: 16*fem,
                            top: 0*fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(16*fem, 11*fem, 16*fem, 12*fem),
                              width: 343*fem,
                              height: 45*fem,
                              child: Text(
                                'Text',
                                style: SafeGoogleFont (
                                  'SF Pro Text',
                                  fontSize: 17*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2941176471*ffem/fem,
                                  letterSpacing: -0.4099999964*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // descriptionpkd (I26:1634;1881:10112)
                      margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 0*fem),
                      child: Text(
                        'This is a sample description that sits below a group.',
                        style: SafeGoogleFont (
                          'SF Pro Text',
                          fontSize: 13*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846*ffem/fem,
                          letterSpacing: -0.0799999982*fem,
                          color: Color(0xffff3b30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typeframestatetextthemedarksyo (26:1635)
              left: 415*fem,
              top: 564*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(0*fem, 13.5*fem, 0*fem, 0*fem),
                width: 375*fem,
                height: 116*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // tableviewtitlejWD (26:1636)
                      padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                      width: double.infinity,
                      height: 24.5*fem,
                      child: Container(
                        // row3Wu (I26:1636;1881:10034)
                        width: 34*fem,
                        height: 23*fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // MXb (I26:1636;1881:10035;1388:23)
                              left: 5.5*fem,
                              top: 0*fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 11*fem,
                                    height: 23*fem,
                                    child: Text(
                                      '􀑋',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2575*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // titleouP (I26:1636;1881:10036)
                              left: 0*fem,
                              top: 0.5*fem,
                              child: Align(
                                child: SizedBox(
                                  width: 34*fem,
                                  height: 22*fem,
                                  child: Text(
                                    'Title',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // autogroupiduzUEq (T1TczxyNBBRsnsJfgAiDUZ)
                      padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 8*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // inputA7f (26:1637)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                            width: double.infinity,
                            height: 44*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff38383a)),
                              color: Color(0xff000000),
                              borderRadius: BorderRadius.circular(10*fem),
                            ),
                            child: Container(
                              // tableviewrowdmw (26:1639)
                              padding: EdgeInsets.fromLTRB(16*fem, 7*fem, 15*fem, 5*fem),
                              width: double.infinity,
                              height: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // titlej4H (I26:1639;752:1563;728:153)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 270*fem, 2*fem),
                                    child: Text(
                                      'Title',
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 17*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2941176471*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    // bMP (I26:1639;752:1564;728:211;557:403)
                                    child: Text(
                                      '􀆊',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 2*ffem/fem,
                                        letterSpacing: 0.1800000072*fem,
                                        color: Color(0xff3a3a3c),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            // descriptionHED (I26:1640;1881:10112)
                            'This is a sample description that sits below a group.',
                            style: SafeGoogleFont (
                              'SF Pro Text',
                              fontSize: 13*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3846153846*ffem/fem,
                              letterSpacing: -0.0799999982*fem,
                              color: Color(0x99ebebf5),
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
              // typeframestatedisablethemedark (26:1641)
              left: 415*fem,
              top: 700*fem,
              child: Opacity(
                opacity: 0.32,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0*fem, 13.5*fem, 0*fem, 0*fem),
                  width: 375*fem,
                  height: 116*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // tableviewtitleyWM (26:1642)
                        padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                        width: double.infinity,
                        height: 24.5*fem,
                        child: Container(
                          // rowdL1 (I26:1642;1881:10034)
                          width: 34*fem,
                          height: 23*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // j89 (I26:1642;1881:10035;1388:23)
                                left: 5.5*fem,
                                top: 0*fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 11*fem,
                                      height: 23*fem,
                                      child: Text(
                                        '􀑋',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 18*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2575*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // titlekow (I26:1642;1881:10036)
                                left: 0*fem,
                                top: 0.5*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 34*fem,
                                    height: 22*fem,
                                    child: Text(
                                      'Title',
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
                            ],
                          ),
                        ),
                      ),
                      Container(
                        // autogroup6fjmo1X (T1TdbceJE5MrccYPiX6FJm)
                        padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 8*fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // inputt2y (26:1643)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                              width: double.infinity,
                              height: 44*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff38383a)),
                                color: Color(0xff000000),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child: Container(
                                // tableviewrowxHj (26:1645)
                                padding: EdgeInsets.fromLTRB(16*fem, 7*fem, 15*fem, 5*fem),
                                width: double.infinity,
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // titleEm3 (I26:1645;752:1563;728:153)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 270*fem, 2*fem),
                                      child: Text(
                                        'Title',
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2941176471*ffem/fem,
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      // 62Z (I26:1645;752:1564;728:211;557:403)
                                      child: Text(
                                        '􀆊',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 2*ffem/fem,
                                          letterSpacing: 0.1800000072*fem,
                                          color: Color(0xff3a3a3c),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              // descriptionNkm (I26:1646;1881:10112)
                              'This is a sample description that sits below a group.',
                              style: SafeGoogleFont (
                                'SF Pro Text',
                                fontSize: 13*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3846153846*ffem/fem,
                                letterSpacing: -0.0799999982*fem,
                                color: Color(0x99ebebf5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}