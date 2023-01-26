import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class TradeQR extends StatelessWidget {
  static const String routeName = "/TradeQR";
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // tradescancodeuXB (16:785)
        width: double.infinity,
        height: 852*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Container(
          // group3261 (103:1254)
          width: 822*fem,
          height: 868*fem,
          decoration: const BoxDecoration (
            image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage (
                'assets/page-1/images/blogqrcodes800x533-1-bg-cL5.png',
              ),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                // grafik3HXj (103:1269)
                left: 91.6800537109*fem,
                top: 185.6290893555*fem,
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
                        'assets/page-1/images/grafik-3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // exclude5yP (103:1257)
                left: 0*fem,
                top: 0*fem,
                child: Align(
                  child: SizedBox(
                    width: 393*fem,
                    height: 852*fem,
                    child: Image.asset(
                      'assets/page-1/images/exclude.png',
                      width: 393*fem,
                      height: 852*fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // group2xGV (103:1260)
                left: 30*fem,
                top: 35*fem,
                child: Container(
                  width: 321*fem,
                  height: 545*fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // actionclose2GM (103:1261)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 191*fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 46*fem,
                            height: 46*fem,
                            child: ElevatedButton(
                                child: Image.asset(
                                  'assets/page-1/images/action-close-ir1.png',
                                  width: 46*fem,
                                  height: 46*fem,
                                ),
                              onPressed: (){
                                  Navigator.pop(context);
                              },
                              )
                            /*Image.asset(
                              'assets/page-1/images/action-close-ir1.png',
                              width: 46*fem,
                              height: 46*fem,
                            ),
                             */
                          ),
                        ),
                      ),
                      Container(
                        // autogroupjwd3rmB (T1TNGDrv684b6Cqa4UJWD3)
                        margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 218*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vector8strokeZvV (103:1266)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 218*fem, 0*fem),
                              width: 45*fem,
                              height: 45*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-8-stroke-sMP.png',
                                width: 45*fem,
                                height: 45*fem,
                              ),
                            ),
                            Container(
                              // vector8strokeqt1 (103:1267)
                              width: 45*fem,
                              height: 45*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-8-stroke-jJM.png',
                                width: 45*fem,
                                height: 45*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogrouphekfjCh (T1TNMtN9PKu1SH7kqUHeKF)
                        margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 0*fem, 0*fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vector8strokeRrD (103:1264)
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 218*fem, 0*fem),
                              width: 45*fem,
                              height: 45*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-8-stroke-Y2y.png',
                                width: 45*fem,
                                height: 45*fem,
                              ),
                            ),
                            Container(
                              // vector8strokeKgh (103:1265)
                              width: 45*fem,
                              height: 45*fem,
                              child: Image.asset(
                                'assets/page-1/images/vector-8-stroke-25K.png',
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