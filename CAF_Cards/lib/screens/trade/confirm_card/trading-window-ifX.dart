import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/trade/confirm_trade/trading-window.dart';
import 'package:myapp/utils.dart';

import '../../../models/ScreenArguments.dart';
import '../../../widgets/card_fullscreen_widget.dart';

class TradeConfirmCard extends StatelessWidget {
  static const String routeName = "/TradeConfirmCard";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // tradingwindowpFw (26:577)
        padding: EdgeInsets.fromLTRB(6 * fem, 56 * fem, 3 * fem, 15 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group4fnM (103:1271)
              margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 16 * fem),
              width: 382 * fem,
              height: 66 * fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15 * fem),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // simulateswipingcarduptoofferit (106:1190)
                    left: 36.5 * fem,
                    top: 21.5 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 308 * fem,
                          height: 22 * fem,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_back_ios,
                                    color: Color(0xffffffff)),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pushNamed(
                                      context, TradingConfirmTrade.routeName,
                                      arguments: args);
                                },
                                icon: const Icon(Icons.arrow_forward_ios,
                                    color: Color(0xffffffff)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            card_fullscreen_widget(fem: fem, ffem: ffem, args: args),
            // Container(
            //   // group5bo3 (103:1272)
            //   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
            //   width: 382*fem,
            //   height: 52*fem,
            //   child: Stack(
            //     children: [
            //       Positioned(
            //         // buttongJh (I103:1273;291:233)
            //         left: 47.5*fem,
            //         top: 15*fem,
            //         child: Center(
            //           child: Align(
            //             child: SizedBox(
            //               width: 284*fem,
            //               height: 22*fem,
            //               child: Text(
            //                 'Simulate swiping card down to go back',
            //                 textAlign: TextAlign.center,
            //                 style: SafeGoogleFont (
            //                   'SF Pro Text',
            //                   fontSize: 17*ffem,
            //                   fontWeight: FontWeight.w600,
            //                   height: 1.2941176471*ffem/fem,
            //                   color: Color(0xffffffff),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //       Positioned(
            //         // rectangle7gxu (103:1274)
            //         left: 0*fem,
            //         top: 0*fem,
            //         child: Align(
            //           child: SizedBox(
            //             width: 382*fem,
            //             height: 52*fem,
            //             child: TextButton(
            //               onPressed: () {},
            //               style: TextButton.styleFrom (
            //                 padding: EdgeInsets.zero,
            //               ),
            //               child: Container(
            //                 decoration: BoxDecoration (
            //                   borderRadius: BorderRadius.circular(15*fem),
            //                   border: Border.all(color: Color(0xffffffff)),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
