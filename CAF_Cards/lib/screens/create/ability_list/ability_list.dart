import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class CreateAbilityList extends StatelessWidget {
  const CreateAbilityList({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(30 * fem, 42 * fem, 22 * fem, 8 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 309 * fem, 17 * fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 32 * fem,
                  height: 32 * fem,
                  child: Image.asset(
                    'assets/page-1/images/iconography-caesarzkn-9T3.png',
                    width: 32 * fem,
                    height: 32 * fem,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 32 * fem),
              width: 336 * fem,
              height: 125 * fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Container(
                      width: 336 * fem,
                      height: 125 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 59 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 270 * fem, 0 * fem),
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-uD7.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                                Container(
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-xN1.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 270 * fem, 0 * fem),
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-C5j.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                                Container(
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-MXB.png',
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
                  Positioned(
                    left: 53 * fem,
                    top: 51.5 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 230 * fem,
                          height: 22 * fem,
                          child: Text(
                            'Draw 2 cards when played',
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
                    left: 303 * fem,
                    top: 92 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 25 * fem,
                        height: 25 * fem,
                        child: Image.asset(
                          'assets/page-1/images/atomgood-2-kSH.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 286.5 * fem,
                    top: 93.5 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 13 * fem,
                          height: 22 * fem,
                          child: Text(
                            '4',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.9166666667 * ffem / fem,
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
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 26 * fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 131 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Container(
                          width: 336 * fem,
                          height: 125 * fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 59 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 270 * fem, 0 * fem),
                                      width: 33 * fem,
                                      height: 33 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-8-stroke-E9j.png',
                                        width: 33 * fem,
                                        height: 33 * fem,
                                      ),
                                    ),
                                    Container(
                                      width: 33 * fem,
                                      height: 33 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-8-stroke-rhb.png',
                                        width: 33 * fem,
                                        height: 33 * fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 270 * fem, 0 * fem),
                                      width: 33 * fem,
                                      height: 33 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-8-stroke-jxq.png',
                                        width: 33 * fem,
                                        height: 33 * fem,
                                      ),
                                    ),
                                    Container(
                                      width: 33 * fem,
                                      height: 33 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/vector-8-stroke-Vxq.png',
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
                      Positioned(
                        left: 113 * fem,
                        top: 40.5 * fem,
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
                        left: 286.5 * fem,
                        top: 92 * fem,
                        child: Container(
                          width: 41.5 * fem,
                          height: 25 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 3.5 * fem, 0 * fem),
                                  child: Text(
                                    '7',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'SF Pro Display',
                                      fontSize: 24 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 0.9166666667 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 25 * fem,
                                height: 25 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/atomgood-2-nZb.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 180 * fem,
                        top: 59 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 33 * fem,
                            height: 33 * fem,
                            child: Image.asset(
                              'assets/page-1/images/group-16.png',
                              width: 33 * fem,
                              height: 33 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 32 * fem),
              width: 336 * fem,
              height: 125 * fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Container(
                      width: 336 * fem,
                      height: 125 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 59 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 270 * fem, 0 * fem),
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-Q2H.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                                Container(
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-wRF.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 270 * fem, 0 * fem),
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-iKX.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                                Container(
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-xBF.png',
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
                  Positioned(
                    left: 14.5 * fem,
                    top: 51.5 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 307 * fem,
                          height: 22 * fem,
                          child: Text(
                            'Deal 1 damage to a selected enemy',
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
                    left: 303 * fem,
                    top: 92 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 25 * fem,
                        height: 25 * fem,
                        child: Image.asset(
                          'assets/page-1/images/atomgood-2-5n5.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 286.5 * fem,
                    top: 93.5 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 13 * fem,
                          height: 22 * fem,
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.9166666667 * ffem / fem,
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
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 32 * fem),
              width: 336 * fem,
              height: 125 * fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Container(
                      width: 336 * fem,
                      height: 125 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 59 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 270 * fem, 0 * fem),
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-gry.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                                Container(
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-qMw.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 270 * fem, 0 * fem),
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-jKs.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                                Container(
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-cxd.png',
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
                  Positioned(
                    left: 113 * fem,
                    top: 40.5 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 110 * fem,
                          height: 44 * fem,
                          child: Text(
                            'Round start:\nDraw 1 card',
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
                    left: 303 * fem,
                    top: 92 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 25 * fem,
                        height: 25 * fem,
                        child: Image.asset(
                          'assets/page-1/images/atomgood-2-e2h.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 286.5 * fem,
                    top: 93.5 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 13 * fem,
                          height: 22 * fem,
                          child: Text(
                            '6',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.9166666667 * ffem / fem,
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
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 0 * fem),
              width: 336 * fem,
              height: 125 * fem,
              child: Stack(
                children: [
                  Positioned(
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Container(
                      width: 336 * fem,
                      height: 125 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 59 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 270 * fem, 0 * fem),
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-nPP.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                                Container(
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-6yB.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 270 * fem, 0 * fem),
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-zVB.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                                Container(
                                  width: 33 * fem,
                                  height: 33 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/vector-8-stroke-gpd.png',
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
                  Positioned(
                    left: 27.5 * fem,
                    top: 51.5 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 281 * fem,
                          height: 22 * fem,
                          child: Text(
                            'Copy the stats of a selected card',
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
                    left: 303 * fem,
                    top: 92 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 25 * fem,
                        height: 25 * fem,
                        child: Image.asset(
                          'assets/page-1/images/atomgood-2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 286.5 * fem,
                    top: 93.5 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 13 * fem,
                          height: 22 * fem,
                          child: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.9166666667 * ffem / fem,
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
          ],
        ),
      ),
    );
  }
}
