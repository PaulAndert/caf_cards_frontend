import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/collection/collection.dart';
import 'package:myapp/screens/home/home.dart';
import 'package:myapp/services/card_service.dart';
import 'package:myapp/utils.dart';

import '../../../models/ScreenArguments.dart';
import '../../../models/gamecard.dart';
import '../../../models/trade.dart';
import '../../../services/helper_service.dart';
import '../../../services/trade_service.dart';

class TradingConfirmTrade extends StatefulWidget {
  static const String routeName = "/TradingConfirmTrade";

  @override
  State<TradingConfirmTrade> createState() => _TradingConfirmTradeState();
}

class _TradingConfirmTradeState extends State<TradingConfirmTrade> {
  String? deviceId;
  Trade? trade;
  Gamecard? ownCard;
  Gamecard? friendsCard;

  bool deviceIdLoaded = false;
  bool tradeLoaded = false;
  bool cardsLoaded = false;

  @override
  void initState() {
    super.initState();

    getDeviceId();
  }

  getDeviceId() async {
    deviceId = await HelperService().getUserId();
    if (deviceId != null) {
      setState(() {
        deviceIdLoaded = true;
      });
    }
    while (true) {
      getTrade(deviceId);
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  getTrade(deviceId) async {
    trade = await TradeService().getTradeByDeviceId(deviceId);
    if (trade != null) {
      setState(() {
        tradeLoaded = true;
        getCards();
      });
    }
  }

  getCards() async {
    if (deviceId == trade!.senderDeviceId) {
      ownCard = await GamecardService().getGamecardById(trade!.senderCardId);
      friendsCard =
          await GamecardService().getGamecardById(trade!.receiverCardId);
    } else {
      ownCard = await GamecardService().getGamecardById(trade!.receiverCardId);
      friendsCard =
          await GamecardService().getGamecardById(trade!.senderCardId);
    }
    if (ownCard != null && friendsCard != null) {
      setState(() {
        cardsLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // tradingwindowPCh (10:10940)
        padding: EdgeInsets.fromLTRB(0 * fem, 61 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   // autogrouphymb5NM (T1SaUcz9XZ4s7KTsVVHYMb)
            //   width: double.infinity,
            //   height: 66 * fem,
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         // group7Y13 (111:1519)
            //         margin: EdgeInsets.fromLTRB(
            //             0 * fem, 0 * fem, 15 * fem, 0 * fem),
            //         child: TextButton(
            //           onPressed: () {},
            //           style: TextButton.styleFrom(
            //             padding: EdgeInsets.zero,
            //           ),
            //           child: Container(
            //             width: 190 * fem,
            //             height: double.infinity,
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(15 * fem),
            //             ),
            //             child: Stack(
            //               children: [
            //                 Positioned(
            //                   // simulateswipingyourcardupWry (111:1520)
            //                   left: 15.7513427734 * fem,
            //                   top: 10.5 * fem,
            //                   child: Center(
            //                     child: Align(
            //                       child: SizedBox(
            //                         width: 158 * fem,
            //                         height: 44 * fem,
            //                         child: Text(
            //                           args.deviceId,
            //                           textAlign: TextAlign.center,
            //                           style: SafeGoogleFont(
            //                             'SF Pro Display',
            //                             fontSize: 16 * ffem,
            //                             fontWeight: FontWeight.w700,
            //                             height: 1.375 * ffem / fem,
            //                             color: Color(0xffffffff),
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Positioned(
            //                   // rectangle7eVK (111:1521)
            //                   left: 0 * fem,
            //                   top: 0 * fem,
            //                   child: Align(
            //                     child: SizedBox(
            //                       width: 190 * fem,
            //                       height: 66 * fem,
            //                       child: Container(
            //                         decoration: BoxDecoration(
            //                           borderRadius:
            //                               BorderRadius.circular(15 * fem),
            //                           border:
            //                               Border.all(color: Color(0xffffffff)),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //       TextButton(
            //         // group8FV7 (111:1522)
            //         onPressed: () {},
            //         style: TextButton.styleFrom(
            //           padding: EdgeInsets.zero,
            //         ),
            //         child: Container(
            //           width: 188 * fem,
            //           height: double.infinity,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(15 * fem),
            //           ),
            //           child: Stack(
            //             children: [
            //               Positioned(
            //                 // simulateswipingyourfriendscard (111:1523)
            //                 left: 14.75390625 * fem,
            //                 top: 10.5 * fem,
            //                 child: Center(
            //                   child: Align(
            //                     child: SizedBox(
            //                       width: 158 * fem,
            //                       height: 44 * fem,
            //                       child: Text(
            //                         'Simulate swiping your friends card up ',
            //                         textAlign: TextAlign.center,
            //                         style: SafeGoogleFont(
            //                           'SF Pro Display',
            //                           fontSize: 16 * ffem,
            //                           fontWeight: FontWeight.w700,
            //                           height: 1.375 * ffem / fem,
            //                           color: Color(0xffffffff),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //               Positioned(
            //                 // rectangle7Jrh (111:1524)
            //                 left: 0 * fem,
            //                 top: 0 * fem,
            //                 child: Align(
            //                   child: SizedBox(
            //                     width: 188 * fem,
            //                     height: 66 * fem,
            //                     child: Container(
            //                       decoration: BoxDecoration(
            //                         borderRadius:
            //                             BorderRadius.circular(15 * fem),
            //                         border:
            //                             Border.all(color: Color(0xffffffff)),
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffffffff),
                    )),
                IconButton(
                    onPressed: () {
                      //here trade logic
                      Navigator.pushNamed(
                        context,
                        Home.routeName,
                      );
                    },
                    icon: const Icon(Icons.check, color: Color(0xffffffff))),
              ],
            ),
            Container(
              // autogrouphwqyYm3 (T1Sdiwk2965Kcmk3njHwQy)
              padding: EdgeInsets.fromLTRB(
                  11.99 * fem, 132 * fem, 10 * fem, 24 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupeyf71uX (T1SaocSWEBLWPSzFyYeYF7)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 201 * fem),
                    width: double.infinity,
                    height: 267 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup6k6huED (T1Sb825VwbJNWgtrzo6k6H)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 14.99 * fem, 0 * fem),
                          width: 178.01 * fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // yourcardmnD (26:990)
                                left: 62.5144042969 * fem,
                                top: 6 * fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 63 * fem,
                                      height: 44 * fem,
                                      child: Text(
                                        'Your\nCard',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'SF Pro Text',
                                          fontSize: 32 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 0.6875 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // jarofgreedm9w (111:1436)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Container(
                                  width: 178.01 * fem,
                                  height: 267 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // rectangle38Qih (111:1437)
                                        left: 0 * fem,
                                        top: 0 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 178.01 * fem,
                                            height: 267 * fem,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        29 * fem),
                                                color: Color(0xff47479d),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // group1042Z (111:1438)
                                        left: 11.46875 * fem,
                                        top: 136.4255371094 * fem,
                                        child: Container(
                                          width: 154.08 * fem,
                                          height: 87.22 * fem,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogroupp8sxiN1 (T1SbTWX2LyG7MJ6D27p8sX)
                                                margin: EdgeInsets.fromLTRB(
                                                    0.24 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    59.18 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // vector8strokePj3 (111:1439)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0.45 * fem,
                                                              122.43 * fem,
                                                              0 * fem),
                                                      width: 14.96 * fem,
                                                      height: 13.79 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/vector-8-stroke-u5w.png',
                                                        width: 14.96 * fem,
                                                        height: 13.79 * fem,
                                                      ),
                                                    ),
                                                    Container(
                                                      // vector8stroke3Yh (111:1440)
                                                      width: 16.46 * fem,
                                                      height: 12.54 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/vector-8-stroke-Wb7.png',
                                                        width: 16.46 * fem,
                                                        height: 12.54 * fem,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // autogroupetq1WhB (T1Sbb68jAjFELs7Q2deTQ1)
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      // vector8strokeRZF (111:1441)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              122.67 * fem,
                                                              0 * fem),
                                                      width: 16.46 * fem,
                                                      height: 12.54 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/vector-8-stroke-YjX.png',
                                                        width: 16.46 * fem,
                                                        height: 12.54 * fem,
                                                      ),
                                                    ),
                                                    Container(
                                                      // vector8strokehWm (111:1442)
                                                      width: 14.96 * fem,
                                                      height: 13.79 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/vector-8-stroke-ycq.png',
                                                        width: 14.96 * fem,
                                                        height: 13.79 * fem,
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
                                        // group13bc9 (111:1444)
                                        left: 133.9661865234 * fem,
                                        top: 3.672668457 * fem,
                                        child: Container(
                                          width: 36.34 * fem,
                                          height: 30.99 * fem,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // group951X (111:1445)
                                                left: 3.0064697266 * fem,
                                                top: 0 * fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 33.34 * fem,
                                                    height: 30.99 * fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/group-9-7vM.png',
                                                      width: 33.34 * fem,
                                                      height: 30.99 * fem,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // 7U1 (111:1449)
                                                left: 0 * fem,
                                                top: 3.1382446289 * fem,
                                                child: Center(
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 11 * fem,
                                                      height: 22 * fem,
                                                      child: Text(
                                                        '1',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: SafeGoogleFont(
                                                          'SF Pro Display',
                                                          fontSize: 20 * ffem,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height:
                                                              1.1 * ffem / fem,
                                                          color:
                                                              Color(0xffffffff),
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
                                        // draw2cardswhenplayed8P7 (111:1450)
                                        left: 13.6563720703 * fem,
                                        top: 173.8482055664 * fem,
                                        child: Center(
                                          child: Align(
                                            child: SizedBox(
                                              width: 149 * fem,
                                              height: 22 * fem,
                                              child: Text(
                                                'Draw 2 cards when played',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'SF Pro Display',
                                                  fontSize: 13 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height:
                                                      1.6923076923 * ffem / fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // topfdergierXg9 (111:1451)
                                        left: 13.9890136719 * fem,
                                        top: 6.6860961914 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 81 * fem,
                                            height: 22 * fem,
                                            child: Text(
                                              ownCard?.name ?? "...",
                                              style: SafeGoogleFont(
                                                'SF Pro Display',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height:
                                                    1.4666666667 * ffem / fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // grafik48A9 (111:1452)
                                        left: 13.9619140625 * fem,
                                        top: 32.876159668 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 150.59 * fem,
                                            height: 93.64 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/grafik-4-4Hs.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // group12aH3 (111:1453)
                                        left: 16.4490966797 * fem,
                                        top: 232.56640625 * fem,
                                        child: Container(
                                          width: 31.23 * fem,
                                          height: 24.2 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Center(
                                                // SKF (111:1459)
                                                child: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      2.04 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    '0',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'SF Pro Display',
                                                      fontSize: 20 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.1 * ffem / fem,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // group7W4D (111:1454)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    0.33 * fem),
                                                width: 18.19 * fem,
                                                height: 23.88 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/group-7-KVo.png',
                                                  width: 18.19 * fem,
                                                  height: 23.88 * fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // group11xB7 (111:1460)
                                        left: 124.7030029297 * fem,
                                        top: 235.1252441406 * fem,
                                        child: Container(
                                          width: 39.41 * fem,
                                          height: 23.18 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Center(
                                                // E8d (111:1461)
                                                child: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      3.48 * fem,
                                                      0.46 * fem),
                                                  child: Text(
                                                    '2',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'SF Pro Display',
                                                      fontSize: 20 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.1 * ffem / fem,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // group8hH7 (111:1462)
                                                width: 24.93 * fem,
                                                height: 23.18 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/group-8-SQd.png',
                                                  width: 24.93 * fem,
                                                  height: 23.18 * fem,
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
                            ],
                          ),
                        ),
                        Container(
                          // autogroupxgcmPfj (T1Sbtadam6SawZcuttxGcM)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: 178.01 * fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                // friendscardg93 (26:991)
                                left: 40.5144042969 * fem,
                                top: 6 * fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 93 * fem,
                                      height: 44 * fem,
                                      child: Text(
                                        'friends\nCard',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'SF Pro Text',
                                          fontSize: 32 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 0.6875 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // middleleftU4u (111:1474)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Container(
                                  width: 178.01 * fem,
                                  height: 267 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // rectangle387Nm (111:1475)
                                        left: 0 * fem,
                                        top: 0 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 178.01 * fem,
                                            height: 267 * fem,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        29 * fem),
                                                color: Color(0xff47479d),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // group8jf3 (111:1476)
                                        left: 93.0144042969 * fem,
                                        top: 173 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 17.12 * fem,
                                            height: 15.19 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/group-8-WDb.png',
                                              width: 17.12 * fem,
                                              height: 15.19 * fem,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // group10PDo (111:1480)
                                        left: 11.46875 * fem,
                                        top: 136.4254150391 * fem,
                                        child: Container(
                                          width: 154.08 * fem,
                                          height: 87.22 * fem,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // autogroupddbkSSy (T1ScGz9v6XwDYcuBEGDdbK)
                                                margin: EdgeInsets.fromLTRB(
                                                    0.24 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    59.18 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // vector8strokeKmf (111:1481)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0.45 * fem,
                                                              122.43 * fem,
                                                              0 * fem),
                                                      width: 14.96 * fem,
                                                      height: 13.79 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/vector-8-stroke-MKj.png',
                                                        width: 14.96 * fem,
                                                        height: 13.79 * fem,
                                                      ),
                                                    ),
                                                    Container(
                                                      // vector8strokeBos (111:1482)
                                                      width: 16.46 * fem,
                                                      height: 12.54 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/vector-8-stroke-Znd.png',
                                                        width: 16.46 * fem,
                                                        height: 12.54 * fem,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // autogroup5yqhHM7 (T1ScNUzkppYGhsHiAB5yQH)
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      // vector8strokeQAq (111:1483)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              122.67 * fem,
                                                              0 * fem),
                                                      width: 16.46 * fem,
                                                      height: 12.54 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/vector-8-stroke-dZf.png',
                                                        width: 16.46 * fem,
                                                        height: 12.54 * fem,
                                                      ),
                                                    ),
                                                    Container(
                                                      // vector8strokeUwP (111:1484)
                                                      width: 14.96 * fem,
                                                      height: 13.79 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/vector-8-stroke-bx9.png',
                                                        width: 14.96 * fem,
                                                        height: 13.79 * fem,
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
                                        // group13ajX (111:1486)
                                        left: 133.9659423828 * fem,
                                        top: 3.672668457 * fem,
                                        child: Container(
                                          width: 36.34 * fem,
                                          height: 30.99 * fem,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                // group9tER (111:1487)
                                                left: 3.0067138672 * fem,
                                                top: 0 * fem,
                                                child: Align(
                                                  child: SizedBox(
                                                    width: 33.34 * fem,
                                                    height: 30.99 * fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/group-9-E5B.png',
                                                      width: 33.34 * fem,
                                                      height: 30.99 * fem,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                // L6R (111:1491)
                                                left: 0 * fem,
                                                top: 3.1382446289 * fem,
                                                child: Center(
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 11 * fem,
                                                      height: 22 * fem,
                                                      child: Text(
                                                        '2',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: SafeGoogleFont(
                                                          'SF Pro Display',
                                                          fontSize: 20 * ffem,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height:
                                                              1.1 * ffem / fem,
                                                          color:
                                                              Color(0xffffffff),
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
                                        // roundstartregenerate1ofeveryal (111:1492)
                                        left: 18.6563720703 * fem,
                                        top: 147.2840576172 * fem,
                                        child: Center(
                                          child: Align(
                                            child: SizedBox(
                                              width: 139 * fem,
                                              height: 66 * fem,
                                              child: Text(
                                                'Round start:\nregenerate 1        of every ally',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'SF Pro Display',
                                                  fontSize: 13 * ffem,
                                                  fontWeight: FontWeight.w700,
                                                  height:
                                                      1.6923076923 * ffem / fem,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // topfdergierW2q (111:1493)
                                        left: 15.1298828125 * fem,
                                        top: 6.6860961914 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 54 * fem,
                                            height: 22 * fem,
                                            child: Text(
                                              friendsCard?.name ?? "...",
                                              style: SafeGoogleFont(
                                                'SF Pro Display',
                                                fontSize: 15 * ffem,
                                                fontWeight: FontWeight.w700,
                                                height:
                                                    1.4666666667 * ffem / fem,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // image1M3T (111:1494)
                                        left: 15.1298828125 * fem,
                                        top: 33.0900878906 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 148.33 * fem,
                                            height: 93.57 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/image-1-ixd.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // group12Cpm (111:1495)
                                        left: 16.4490966797 * fem,
                                        top: 234.7689819336 * fem,
                                        child: Container(
                                          width: 31.2 * fem,
                                          height: 22.63 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Center(
                                                // TEu (111:1501)
                                                child: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      5.85 * fem,
                                                      0.63 * fem),
                                                  child: Text(
                                                    '0',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'SF Pro Display',
                                                      fontSize: 20 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.1 * ffem / fem,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // group7JmK (111:1496)
                                                width: 14.35 * fem,
                                                height: 21.13 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/group-7-JaZ.png',
                                                  width: 14.35 * fem,
                                                  height: 21.13 * fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // group11c1K (111:1502)
                                        left: 124.7032470703 * fem,
                                        top: 235.1252441406 * fem,
                                        child: Container(
                                          width: 39.41 * fem,
                                          height: 23.18 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Center(
                                                // H7T (111:1503)
                                                child: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      3.48 * fem,
                                                      0.46 * fem),
                                                  child: Text(
                                                    '4',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'SF Pro Display',
                                                      fontSize: 20 * ffem,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.1 * ffem / fem,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // group8Yp5 (111:1504)
                                                width: 24.93 * fem,
                                                height: 23.18 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/group-8-Na1.png',
                                                  width: 24.93 * fem,
                                                  height: 23.18 * fem,
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   // hintswipeupyourcardtoacceptand (26:855)
                  //   margin: EdgeInsets.fromLTRB(
                  //       0 * fem, 0 * fem, 0.99 * fem, 0 * fem),
                  //   constraints: BoxConstraints(
                  //     maxWidth: 305 * fem,
                  //   ),
                  //   child: Text(
                  //     'Hint:\nSwipe up your card to accept and your trading partners card to reject the trade',
                  //     textAlign: TextAlign.center,
                  //     style: SafeGoogleFont(
                  //       'SF Pro Display',
                  //       fontSize: 20 * ffem,
                  //       fontWeight: FontWeight.w700,
                  //       height: 1.2575 * ffem / fem,
                  //       letterSpacing: -0.2399999946 * fem,
                  //       color: Color(0xffffffff),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
