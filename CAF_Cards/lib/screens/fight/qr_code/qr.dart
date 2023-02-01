import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class FightQR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // fightscancodeL69 (10:10936)
        width: double.infinity,
        height: 852*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Container(
          // group3SQ5 (103:1224)
          width: 822*fem,
          height: 868*fem,
          decoration: BoxDecoration (
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/page-1/images/blogqrcodes800x533-1-bg.png',
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                // grafik2h57 (103:1223)
                left: 91.6782226562*fem,
                top: 185.6266174316*fem,
                child: Align(
                  child: SizedBox(
                    width: 236.56*fem,
                    height: 467.8*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only (
                        bottomRight: Radius.circular(25*fem),
                        bottomLeft: Radius.circular(25*fem),
                      ),
                      child: Image.asset(
                        'assets/page-1/images/grafik-2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // exclude6d3 (103:1250)
                left: 0*fem,
                top: 0*fem,
                child: Align(
                  child: SizedBox(
                    width: 393*fem,
                    height: 852*fem,
                    child: Image.asset(
                      'assets/page-1/images/exclude-Fwb.png',
                      width: 393*fem,
                      height: 852*fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // group2nVs (103:1219)
                left: 30*fem,
                top: 35*fem,
                child: Container(
                  width: 321*fem,
                  height: 545*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // actioncloseTc1 (16:774)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 191*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 46*fem,
                            height: 46*fem,
                            child: Image.asset(
                              'assets/page-1/images/action-close.png',
                              width: 46*fem,
                              height: 46*fem,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // autogrouptkbfHL9 (T1TMruCSddoSxcADa7tkbF)
                        margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 218*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vector8strokeyim (16:780)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 218*fem, 0*fem),
                              width: 45*fem,
                              height: 45*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-8-stroke-vgd.png',
                                width: 45*fem,
                                height: 45*fem,
                              ),
                            ),
                            Container(
                              // vector8stroke4Nq (16:781)
                              width: 45*fem,
                              height: 45*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-8-stroke-Su3.png',
                                width: 45*fem,
                                height: 45*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroup7vhwxUD (T1TMxu2T4g6bgLDi3J7VHw)
                        margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 0*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vector8strokeEwX (16:778)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 218*fem, 0*fem),
                              width: 45*fem,
                              height: 45*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-8-stroke-W8V.png',
                                width: 45*fem,
                                height: 45*fem,
                              ),
                            ),
                            Container(
                              // vector8strokevJZ (16:782)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                              width: 45*fem,
                              height: 45*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-8-stroke-Fss.png',
                                width: 45*fem,
                                height: 45*fem,
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
      ),
          );
  }
}