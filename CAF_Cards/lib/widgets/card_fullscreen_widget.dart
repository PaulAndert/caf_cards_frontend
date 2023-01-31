import 'package:flutter/cupertino.dart';
import 'package:myapp/models/gamecard.dart';

import '../models/ScreenArguments.dart';
import '../utils.dart';

class card_fullscreen_widget extends StatelessWidget {
  const card_fullscreen_widget({
    Key? key,
    required this.fem,
    required this.ffem,
    required this.args,
  }) : super(key: key);

  final double fem;
  final double ffem;
  final ScreenArguments args;

  @override
  Widget build(BuildContext context) {
    return Container(
      // group6GJH (103:1291)
      margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 10.14*fem, 71*fem),
      width: double.infinity,
      height: 576*fem,
      child: Stack(
        children: [
          Positioned(
            // rectangle38XV7 (103:1277)
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
            // vector8strokeBpZ (103:1278)
            left: 23*fem,
            top: 378.0001220703*fem,
            child: Align(
              child: SizedBox(
                width: 33*fem,
                height: 33*fem,
                child: Image.asset(
                  'assets/page-1/images/vector-8-stroke-9Xb.png',
                  width: 33*fem,
                  height: 33*fem,
                ),
              ),
            ),
          ),
          Positioned(
            // vector8strokeEnq (103:1279)
            left: 299.0002441406*fem,
            top: 378.0001220703*fem,
            child: Align(
              child: SizedBox(
                width: 33*fem,
                height: 33*fem,
                child: Image.asset(
                  'assets/page-1/images/vector-8-stroke-o6M.png',
                  width: 33*fem,
                  height: 33*fem,
                ),
              ),
            ),
          ),
          Positioned(
            // vector8strokehgR (103:1280)
            left: 23*fem,
            top: 470.0001220703*fem,
            child: Align(
              child: SizedBox(
                width: 33*fem,
                height: 33*fem,
                child: Image.asset(
                  'assets/page-1/images/vector-8-stroke-sbj.png',
                  width: 33*fem,
                  height: 33*fem,
                ),
              ),
            ),
          ),
          Positioned(
            // vector8strokex6Z (103:1281)
            left: 299.0002441406*fem,
            top: 470.0001220703*fem,
            child: Align(
              child: SizedBox(
                width: 33*fem,
                height: 33*fem,
                child: Image.asset(
                  'assets/page-1/images/vector-8-stroke-Fnd.png',
                  width: 33*fem,
                  height: 33*fem,
                ),
              ),
            ),
          ),
          Positioned(
            // DHP (103:1296)
            left: 271*fem,
            top: 535.4998779297*fem,
            child: Center(
              child: Align(
                child: SizedBox(
                  width: 26*fem,
                  height: 22*fem,
                  child: Text(
                    args.card.health.toString(),
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
            // group9dru (106:3864)
            left: 293*fem,
            top: 2.9999389648*fem,
            child: Align(
              child: SizedBox(
                width: 66.86*fem,
                height: 66.86*fem,
                child: Image.asset(
                  'assets/page-1/images/group-9-9ED.png',
                  width: 66.86*fem,
                  height: 66.86*fem,
                ),
              ),
            ),
          ),
          Positioned(
            // UMj (103:1297)
            left: 285*fem,
            top: 22.4999389648*fem,
            child: Center(
              child: Align(
                child: SizedBox(
                  width: 26*fem,
                  height: 22*fem,
                  child: Text(
                    args.card.energy.toString(),
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
            // draw2cardswhenplayedhEV (103:1287)
            left: 61.5*fem,
            top: 429.5001220703*fem,
            child: Center(
              child: Align(
                child: SizedBox(
                  width: 230*fem,
                  height: 22*fem,
                  child: Text(
                    args.ability.name,
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
            // topfdergieruLZ (103:1292)
            left: 28*fem,
            top: 22.4998779297*fem,
            child: Align(
              child: SizedBox(
                width: 172*fem,
                height: 22*fem,
                child: Text(
                  //'Jar of Greed',
                  args != null ? args.card.name : "...",
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
            // anoldjarfullofancientcardsandt (103:1293)
            left: 28*fem,
            top: 280.5001220703*fem,
            child: Align(
              child: SizedBox(
                width: 303*fem,
                height: 44*fem,
                child: Text(
                  args.card.description,
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
            // grafik4Avh (103:1295)
            left: 28*fem,
            top: 66*fem,
            child: Align(
              child: SizedBox(
                width: 302*fem,
                height: 202*fem,
                child: Image.asset(
                  'assets/page-1/images/grafik-4-mMF.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            // group7qmw (106:3856)
            left: 46.744140625*fem,
            top: 520.1431884766*fem,
            child: Align(
              child: SizedBox(
                width: 32.83*fem,
                height: 46.36*fem,
                child: Image.asset(
                  'assets/page-1/images/group-7-FHf.png',
                  width: 32.83*fem,
                  height: 46.36*fem,
                ),
              ),
            ),
          ),
          Positioned(
            // WNH (103:1285)
            left: 15*fem,
            top: 531.5001220703*fem,
            child: Center(
              child: Align(
                child: SizedBox(
                  width: 26*fem,
                  height: 22*fem,
                  child: Text(
                    args.card.strength.toString(),
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
            // group8Mth (106:3860)
            left: 302*fem,
            top: 521.9998779297*fem,
            child: Align(
              child: SizedBox(
                width: 50*fem,
                height: 50*fem,
                child: Image.asset(
                  'assets/page-1/images/group-8-BD7.png',
                  width: 50*fem,
                  height: 50*fem,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}