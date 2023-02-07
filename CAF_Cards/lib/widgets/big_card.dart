import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/screen_argument.dart';
import '../utils.dart';


//detailed view of one card
class BigCard extends StatelessWidget {
  const BigCard({
    Key? key,
    required this.fem,
    required this.ffem,
    required this.args,
  }) : super(key: key);

  final double fem;
  final double ffem;
  final ScreenArgument args;

  final textfontsize = 25;
  final numberfontsize = 30;
  final descfontsize = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340 * fem,
      height: 576 * fem,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29 * fem),
        color: const Color(0xff47479d),
      ),
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
                        25 * fem, 2 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      args.card.name,
                      style: SafeGoogleFont(
                        'SF Pro Display',
                        fontSize: textfontsize * ffem,
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
                        0 * fem, 2 * fem, 20 * fem, 0 * fem),
                    child: Row(
                      children: [
                        // Energy Value
                        Expanded(
                          flex: 2,
                          child: Text(
                            args.card.energy.toString(),
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: numberfontsize * ffem,
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
                            //width: double.infinity,
                            //height: double.infinity,
                            width: 66.86 * fem,
                            height: 66.86 * fem,
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
            child: Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
              child: Image.asset(
                'assets/images/placeholder_small.png',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Description
          Expanded(
            flex: 3,
            child: Container(
              margin:
                  EdgeInsets.fromLTRB(25 * fem, 15 * fem, 20 * fem, 20 * fem),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  args.card.description,
                  style: SafeGoogleFont(
                    'SF Pro Display',
                    fontSize: descfontsize * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.1 * ffem / fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),

          // Corners + Ability
          Expanded(
            flex: 5,
            child: Container(
              //margin: EdgeInsets.fromLTRB(5 * fem, 2 * fem, 5 * fem, 2 * fem),
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
                              width: 33 * fem,
                              height: 33 * fem,
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
                              width: 33 * fem,
                              height: 33 * fem,
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
                            30 * fem, 0 * fem, 30 * fem, 0 * fem),
                        child: Center(
                          child: Text(
                            args.ability.name,
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: textfontsize-2 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.1 * ffem / fem,
                              color: Color(0xffffffff),
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
                              width: 33 * fem,
                              height: 33 * fem,
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
                              width: 33 * fem,
                              height: 33 * fem,
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
              margin: EdgeInsets.fromLTRB(16 * fem, 0 * fem, 16 * fem, 2 * fem),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Strength value
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        args.card.strength.toString(),
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: numberfontsize * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.1 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  // Strength Icon
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/images/sword.png',
                      //width: 14.35 * fem,
                      //height: 18.83 * fem,
                      width: 32.83 * fem,
                      height: 46.36 * fem,
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
                        args.card.health.toString(),
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: numberfontsize * ffem,
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
                      //width: double.infinity,
                      //height: double.infinity,
                      width: 50 * fem,
                      height: 50 * fem,
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
