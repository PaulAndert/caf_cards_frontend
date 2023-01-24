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
        // otherslideraku (26:1054)
        width: double.infinity,
        height: 276*fem,
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
              // typeprogresslineiconsthemeligh (26:1055)
              left: 20*fem,
              top: 20*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(21.8*fem, 8*fem, 21.8*fem, 8*fem),
                width: 375*fem,
                height: 44*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconsXxy (26:1061)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.07*fem),
                      width: 18.4*fem,
                      height: 18.35*fem,
                      child: Image.asset(
                        'assets/page-1/images/icons-K4h.png',
                        width: 18.4*fem,
                        height: 18.35*fem,
                      ),
                    ),
                    SizedBox(
                      width: 7.8*fem,
                    ),
                    Container(
                      // slidersagM (26:1056)
                      width: 279*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/page-1/images/sliders.png',
                        width: 279*fem,
                        height: 28*fem,
                      ),
                    ),
                    SizedBox(
                      width: 7.8*fem,
                    ),
                    Container(
                      // icons4bX (26:1060)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.07*fem),
                      width: 18.4*fem,
                      height: 18.35*fem,
                      child: Image.asset(
                        'assets/page-1/images/icons-qaD.png',
                        width: 18.4*fem,
                        height: 18.35*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typeprogresslinethemelightLJ9 (26:1062)
              left: 20*fem,
              top: 212*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 44*fem,
                  child: Image.asset(
                    'assets/page-1/images/typeprogress-line-themelight.png',
                    width: 375*fem,
                    height: 44*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // typesteperthemelightNkd (26:1069)
              left: 20*fem,
              top: 84*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 44*fem,
                  child: Image.asset(
                    'assets/page-1/images/typesteper-themelight.png',
                    width: 375*fem,
                    height: 44*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // typeprogressthemelightEXw (26:1077)
              left: 20*fem,
              top: 148*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 44*fem,
                  child: Image.asset(
                    'assets/page-1/images/typeprogress-themelight.png',
                    width: 375*fem,
                    height: 44*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // typeprogresslineiconsthemedark (26:1085)
              left: 415*fem,
              top: 20*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(21.8*fem, 8*fem, 21.8*fem, 8*fem),
                width: 375*fem,
                height: 44*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconsJgD (26:1091)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.07*fem),
                      width: 18.4*fem,
                      height: 18.35*fem,
                      child: Image.asset(
                        'assets/page-1/images/icons-hAm.png',
                        width: 18.4*fem,
                        height: 18.35*fem,
                      ),
                    ),
                    SizedBox(
                      width: 7.8*fem,
                    ),
                    Container(
                      // sliders4oo (26:1086)
                      width: 279*fem,
                      height: 28*fem,
                      child: Image.asset(
                        'assets/page-1/images/sliders-9hX.png',
                        width: 279*fem,
                        height: 28*fem,
                      ),
                    ),
                    SizedBox(
                      width: 7.8*fem,
                    ),
                    Container(
                      // iconsrDs (26:1090)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.07*fem),
                      width: 18.4*fem,
                      height: 18.35*fem,
                      child: Image.asset(
                        'assets/page-1/images/icons-XT3.png',
                        width: 18.4*fem,
                        height: 18.35*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // typeprogresslinethemedarkV1w (26:1092)
              left: 415*fem,
              top: 212*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 44*fem,
                  child: Image.asset(
                    'assets/page-1/images/typeprogress-line-themedark.png',
                    width: 375*fem,
                    height: 44*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // typesteperthemedarkHCh (26:1099)
              left: 415*fem,
              top: 84*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 44*fem,
                  child: Image.asset(
                    'assets/page-1/images/typesteper-themedark.png',
                    width: 375*fem,
                    height: 44*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // typeprogressthemedark9Eu (26:1107)
              left: 415*fem,
              top: 148*fem,
              child: Align(
                child: SizedBox(
                  width: 375*fem,
                  height: 44*fem,
                  child: Image.asset(
                    'assets/page-1/images/typeprogress-themedark.png',
                    width: 375*fem,
                    height: 44*fem,
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