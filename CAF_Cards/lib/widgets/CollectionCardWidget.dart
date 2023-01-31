import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class CollectionCardWidget extends StatelessWidget {
  const CollectionCardWidget({
    Key? key,
    required this.fem,
    required this.ffem,
    required this.name,
    required this.description,
    required this.energy,
    required this.strength,
    required this.health,
    required this.ability,
  }) : super(key: key);

  final double fem;
  final double ffem;
  final String name;
  final String description;
  final int energy;
  final int strength;
  final int health;
  final String ability;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200 * fem,
      height: 300 * fem,
      child: Stack(
        children: [
          Positioned(
            // lila Untergrund Karte
            left: 1.7401123047 * fem,
            top: 0 * fem,
            child: Align(
              child: SizedBox(
                width: 156.01 * fem,
                height: 234 * fem,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29 * fem),
                    color: const Color(0xff47479d),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // group10k2h (111:1187)
            left: 11.7912597656 * fem,
            top: 119.5625610352 * fem,
            child: Container(
              width: 135.03 * fem,
              height: 76.44 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupykqq1zD (T1SgMNN3SqvZQHc7CTYKQq)
                    margin: EdgeInsets.fromLTRB(
                        0.21 * fem, 0 * fem, 0 * fem, 51.87 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // vector8stroke7GZ (110:1180)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.39 * fem, 107.29 * fem, 0 * fem),
                          width: 13.11 * fem,
                          height: 12.09 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-8-stroke-zHj.png',
                            width: 13.11 * fem,
                            height: 12.09 * fem,
                          ),
                        ),
                        Container(
                          // vector8strokemM7 (110:1181)
                          width: 14.42 * fem,
                          height: 10.99 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-8-stroke-Egu.png',
                            width: 14.42 * fem,
                            height: 10.99 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupxtx3Tjj (T1SgT2sGk3kykMtHyTXTX3)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // vector8strokeMq7 (110:1182)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 107.5 * fem, 0 * fem),
                          width: 14.42 * fem,
                          height: 10.99 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-8-stroke-e45.png',
                            width: 14.42 * fem,
                            height: 10.99 * fem,
                          ),
                        ),
                        Container(
                          // vector8strokeCKw (110:1183)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: 13.11 * fem,
                          height: 12.09 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-8-stroke-Z4Z.png',
                            width: 13.11 * fem,
                            height: 12.09 * fem,
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
            // group13zWh (111:1190)
            left: 118.467590332 * fem,
            top: 3.2186889648 * fem,
            child: Container(
              width: 32.53 * fem,
              height: 27.16 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // group9g29 (110:1186)
                    left: 3.3150024414 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 29.22 * fem,
                        height: 27.16 * fem,
                        child: Image.asset(
                          'assets/page-1/images/group-9-i4d.png',
                          width: 29.22 * fem,
                          height: 27.16 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // u9o (110:1190)
                    left: 0 * fem,
                    top: 1.3906860352 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 11 * fem,
                          height: 22 * fem,
                          child: Text(
                            energy.toString(),
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.1 * ffem / fem,
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
            // Ability
            left: 25 * fem,
            top: 140 * fem,
            child: Center(
              child: Align(
                child: SizedBox(
                  width: 108 * fem,
                  height: 44 * fem,
                  child: Text(
                    ability,
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'SF Pro Display',
                      fontSize: 13 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.6923076923 * ffem / fem,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // Name
            left: 14 * fem,
            top: 4.5 * fem,
            child: Align(
              child: SizedBox(
                width: 81 * fem,
                height: 22 * fem,
                child: Text(
                  name,
                  style: SafeGoogleFont(
                    'SF Pro Display',
                    fontSize: 15 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.4666666667 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // grafik48qB (110:1194)
            left: 13.9763183594 * fem,
            top: 28.8125 * fem,
            child: Align(
              child: SizedBox(
                width: 131.98 * fem,
                height: 82.06 * fem,
                child: Image.asset(
                  'assets/page-1/images/grafik-4.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            // Strength
            left: 15.4762573242 * fem,
            top: 204.3906555176 * fem,
            child: Container(
              width: 28.04 * fem,
              height: 22 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    // fTj (110:1200)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 2.69 * fem, 0 * fem),
                      child: Text(
                        strength.toString(),
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.1 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // group7vuT (110:1195)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0.67 * fem, 0 * fem, 0 * fem),
                    width: 14.35 * fem,
                    height: 18.83 * fem,
                    child: Image.asset(
                      'assets/page-1/images/group-7-W6R.png',
                      width: 14.35 * fem,
                      height: 18.83 * fem,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            // health
            left: 110.3495483398 * fem,
            top: 205.015625 * fem,
            child: Container(
              width: 35.22 * fem,
              height: 22 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    // T2D (110:1185)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 2.37 * fem, 0 * fem),
                      child: Text(
                        health.toString(),
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.1 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // group8VzV (110:1201)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0.41 * fem, 0 * fem, 0 * fem),
                    width: 21.85 * fem,
                    height: 20.31 * fem,
                    child: Image.asset(
                      'assets/page-1/images/group-8-j33.png',
                      width: 21.85 * fem,
                      height: 20.31 * fem,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
