import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class FightBoard extends StatelessWidget {
  const FightBoard({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        height: 852 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 393 * fem,
                  height: 852 * fem,
                  child: Image.asset(
                    'assets/page-1/images/rectangle-4.png',
                    width: 393 * fem,
                    height: 852 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 41.5 * fem,
              top: 120.5 * fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 310 * fem,
                    height: 210 * fem,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: SafeGoogleFont(
                          'SF Pro Text',
                          fontSize: 32 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 0.6875 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text:
                                'Due to the fact that our focus is not on the fighting component, we didn\'t generate a game board\n',
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 32 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.171875 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          const TextSpan(text: '\n'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 115 * fem,
              top: 674 * fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 164 * fem,
                  height: 50 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff000080),
                    borderRadius: BorderRadius.circular(12 * fem),
                  ),
                  child: Center(
                    child: Center(
                      child: Text(
                        'Back to home',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: 17 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2941176471 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
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
