import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/screens/home/home.dart';
import 'package:myapp/screens/create/start/create-start.dart';
import 'package:myapp/screens/trade/start/trade-start.dart';
import 'package:myapp/screens/collection/collection.dart';
import 'package:myapp/screens/fight/start/fight-start.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
    required this.fem,
  }) : super(key: key);

  final double fem;

  @override
  Widget build(BuildContext context) {
    return Container(
      // iconrow4ys (I10:11001;10:2672;17:118)
      padding: EdgeInsets.fromLTRB(17 * fem, 1 * fem, 18 * fem, 0 * fem),
      width: double.infinity,
      height: 53 * fem,
      decoration: BoxDecoration(
        color: Color(0xff202024),
      ),
      child: Container(
        // autogroup1s6mMi5 (T1TRtsJvkdwzcJTBmY1s6m)
        width: double.infinity,
        height: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // frame5ex5 (I10:11001;10:2672;17:119)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 40 * fem, 0 * fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      4.17 * fem, 4.17 * fem, 4.12 * fem, 4.17 * fem),
                  height: double.infinity,
                  child: Align(
                    // iconsGyT (I10:11001;10:2672;17:120)
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: 27.71 * fem,
                      height: 27.71 * fem,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 15.95 * fem),
                        child: ElevatedButton(
                            child: Image.asset(
                              'assets/page-1/images/icons-Ns7.png',
                              width: 30 * fem,
                              height: 29.86 * fem,
                            ),
                            // Reroute to Trade Start
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FightStart()),
                              );
                            }),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // frame6vYD (I10:11001;10:2672;17:122)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 0 * fem, 43.05 * fem, 0 * fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      3 * fem, 2.99 * fem, 3 * fem, 2.99 * fem),
                  height: double.infinity,
                  child: Align(
                    // iconographycaesarzknymP (I10:11001;10:2672;17:123)
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: 30 * fem,
                      height: 29.86 * fem,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 16.15 * fem),
                        child: ElevatedButton(
                            child: Image.asset(
                              'assets/page-1/images/iconography-caesarzkn-Sah.png',
                              width: 30 * fem,
                              height: 29.86 * fem,
                            ),
                            // Reroute to Trade Start
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TradeStart()),
                              );
                            }),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // frame7ExD (I10:11001;10:2672;17:125)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 43 * fem, 0 * fem),
              height: 50.5 * fem,
              child: Align(
                // iconographycaesarzknkvZ (I10:11001;10:2672;17:126)
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: 29.95 * fem,
                  height: 31.5 * fem,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 19 * fem),
                    child: ElevatedButton(
                        child: Image.asset(
                          'assets/page-1/images/iconography-caesarzkn-YKF.png',
                          width: 30 * fem,
                          height: 29.86 * fem,
                        ),
                        // Reroute to Trade Start
                        onPressed: () {
                          Navigator.pop(context);
                          /*Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );*/
                        }),
                  ),
                ),
              ),
            ),
            Container(
              // frame9p9j (I10:11001;10:2672;17:138)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 40 * fem, 0 * fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      3.38 * fem, 3.4 * fem, 3.38 * fem, 3.4 * fem),
                  height: double.infinity,
                  child: Align(
                    // iconsTCh (I10:11001;10:2672;17:139)
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: 29.25 * fem,
                      height: 29.25 * fem,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 15.94 * fem),
                        child: ElevatedButton(
                            child: Image.asset(
                              'assets/page-1/images/icons-RqP.png',
                              width: 30 * fem,
                              height: 29.86 * fem,
                            ),
                            // Reroute to Trade Start
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateStart()),
                              );
                            }),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              // frame8i8d (I10:11001;10:2672;17:128)
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    3.33 * fem, 3.6 * fem, 3.33 * fem, 3.6 * fem),
                height: double.infinity,
                child: Align(
                  // iconsQn9 (I10:11001;10:2672;17:129)
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 29.34 * fem,
                    height: 28.8 * fem,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 16 * fem),
                      child: ElevatedButton(
                          child: Image.asset(
                            'assets/page-1/images/icons-1kZ.png',
                            width: 30 * fem,
                            height: 29.86 * fem,
                          ),
                          // Reroute to Trade Start
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Collection()),
                            );
                          }),
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
