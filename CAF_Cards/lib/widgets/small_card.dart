import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import '../models/screen_argument.dart';
import '../models/ability.dart';
import '../models/Gamecard.dart';


//Widget for small Cards with no description in the App
class CollectionCardWidget extends StatelessWidget {
  const CollectionCardWidget({
    Key? key,
    required this.fem,
    required this.ffem,
    required this.card,
    required this.ability,
    required this.deviceId,
    required this.routeName,
  }) : super(key: key);

  final double fem;
  final double ffem;
  final Ability ability;
  final Gamecard card;
  final String deviceId;
  final String routeName;

  final fontsize = 13;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.01 * fem,
      height: 234 * fem,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29 * fem),
        color: const Color(0xff47479d),
      ),
      child: InkWell(
        onTap: /**/ () {
          Navigator.pushNamed(
            context,
            routeName,
            arguments: ScreenArgument(
                deviceId, card, ability),
          );
        },
        child: Column(
          children: [
            // Top row (Name & Energy)
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  // Name
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          16 * fem, 2 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        card.name,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: fontsize * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.4666666667 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  // Energy
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 2 * fem, 16 * fem, 0 * fem),
                      child: Row(
                        children: [
                          // Energy Value
                          Expanded(
                            flex: 2,
                            child: Text(
                              card.energy.toString(),
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'SF Pro Display',
                                fontSize: fontsize * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.1 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                          // Energy Symbol
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              'assets/images/lightning.png',
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Image
            Expanded(
              flex: 7,
              child: Align(
                child: Image.asset(
                  'assets/images/placeholder_small.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Corners + Ability
            Expanded(
              flex: 8,
              child: Container(
                margin: EdgeInsets.fromLTRB(5 * fem, 2 * fem, 5 * fem, 2 * fem),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Top corners
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // top left corner
                            Expanded(
                              flex: 2,
                              child: Image.asset(
                                'assets/images/top_left_corner.png',
                                width: 13.11 * fem,
                                height: 12.09 * fem,
                              ),
                            ),
                            // Empty space
                            Expanded(
                              flex: 5,
                              child: Container(),
                            ),
                            // top right corner
                            Expanded(
                              flex: 2,
                              child: Image.asset(
                                'assets/images/top_right_corner.png',
                                width: 14.42 * fem,
                                height: 10.99 * fem,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Ability Text
                      Expanded(
                        flex: 7,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              12 * fem, 0 * fem, 12 * fem, 0 * fem),
                          child: Center(
                            child: Text(
                              ability.name,
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'SF Pro Display',
                                fontSize: fontsize * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.6923076923 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Bottom corners
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Bottom left corner
                            Expanded(
                              flex: 2,
                              child: Image.asset(
                                'assets/images/bottom_left_corner.png',
                                width: 14.42 * fem,
                                height: 10.99 * fem,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(),
                            ),
                            // Bottom right corner
                            Expanded(
                              flex: 2,
                              child: Image.asset(
                                'assets/images/bottom_right_corner.png',
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
            ),

            // Strength & Health row
            Expanded(
              flex: 2,
              child: Container(
                margin:
                    EdgeInsets.fromLTRB(16 * fem, 0 * fem, 16 * fem, 2 * fem),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Strength
                    // Strength value
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          card.strength.toString(),
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: fontsize * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.1 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                      // Strength Icon
                    ),
                    // Strength Icon
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        'assets/images/sword.png',
                        width: 14.35 * fem,
                        height: 18.83 * fem,
                      ),
                    ),

                    // Free Space
                    Expanded(
                      flex: 3,
                      child: Container(),
                    ),

                    // Health Value
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          card.health.toString(),
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: fontsize * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.1 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    // Health Icon
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        'assets/images/health.png',
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

