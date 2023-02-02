import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class CreatePreview extends StatelessWidget {
  const CreatePreview({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(9 * fem, 42 * fem, 9 * fem, 0 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 301 * fem, 21 * fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 32 * fem,
                  height: 32 * fem,
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.fromLTRB(9 * fem, 0 * fem, 6.14 * fem, 22 * fem),
              width: double.infinity,
              height: 576 * fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 357 * fem,
                        height: 576 * fem,
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
                    left: 293 * fem,
                    top: 3 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 66.86 * fem,
                        height: 66.86 * fem,
                        child: Image.asset(
                          'assets/images/lightning.png',
                          width: 66.86 * fem,
                          height: 66.86 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 285 * fem,
                    top: 22.4998779297 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 26 * fem,
                          height: 22 * fem,
                          child: Text(
                            '2',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 48 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.4583333333 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 122 * fem,
                    top: 396.5 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 110 * fem,
                          height: 44 * fem,
                          child: Text(
                            'Round start:\nGet 1  .',
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
                  Positioned(
                    left: 28 * fem,
                    top: 22.4998779297 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 89 * fem,
                        height: 22 * fem,
                        child: Text(
                          'Wall-E',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 0.6875 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 28 * fem,
                    top: 291.5 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 287 * fem,
                        height: 22 * fem,
                        child: Text(
                          'A small robot that loves to clean.',
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
                  Positioned(
                    left: 28 * fem,
                    top: 66 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 302 * fem,
                        height: 202 * fem,
                        child: Image.asset(
                          'assets/images/placeholder_small.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 11 * fem,
                    top: 522.1428222656 * fem,
                    child: Container(
                      width: 64.58 * fem,
                      height: 46.36 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 5.74 * fem, 1.65 * fem),
                              child: Text(
                                '1',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'SF Pro Display',
                                  fontSize: 48 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 0.4583333333 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 32.83 * fem,
                            height: 46.36 * fem,
                            child: Image.asset(
                              'assets/images/sword.png',
                              width: 32.83 * fem,
                              height: 46.36 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 269 * fem,
                    top: 521 * fem,
                    child: Container(
                      width: 81 * fem,
                      height: 50 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 5 * fem, 1 * fem),
                              child: Text(
                                '2',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'SF Pro Display',
                                  fontSize: 48 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 0.4583333333 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 50 * fem,
                            height: 50 * fem,
                            child: Image.asset(
                              'assets/images/health.png',
                              width: 50 * fem,
                              height: 50 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 22 * fem,
                    top: 346 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 309 * fem,
                        height: 145 * fem,
                        child: Image.asset(
                          'assets/images/lightning.png',
                          width: 309 * fem,
                          height: 145 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 151.5 * fem,
                    top: 90.5 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 53 * fem,
                          height: 22 * fem,
                          child: Text(
                            'picture',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Text',
                              fontSize: 17 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2941176471 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 31 * fem,
                    top: 66 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 299 * fem,
                        height: 202 * fem,
                        child: Image.asset(
                          'assets/images/placeholder_small.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 188 * fem,
                    top: 415 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 33 * fem,
                        height: 33 * fem,
                        child: Image.asset(
                          'assets/images/lightning.png',
                          width: 33 * fem,
                          height: 33 * fem,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  EdgeInsets.fromLTRB(106 * fem, 0 * fem, 105 * fem, 22 * fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 50 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff000080),
                    borderRadius: BorderRadius.circular(12 * fem),
                  ),
                  child: Center(
                    child: Center(
                      child: Text(
                        'Create card',
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
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        121 * fem, 21 * fem, 120 * fem, 8 * fem),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xff202024),
                    ),
                    child: Center(
                      child: SizedBox(
                        width: double.infinity,
                        height: 5 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                            color: const Color(0xffffffff),
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
