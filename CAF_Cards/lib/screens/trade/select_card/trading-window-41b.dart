import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/ability.dart';
import 'package:myapp/services/card_service.dart';
import 'package:myapp/utils.dart';
import '../../../widgets/CollectionCardWidget.dart';


import '../../../models/user.dart';
import '../../../models/gamecard.dart';
import '../../../services/helper_service.dart';
import '../../../services/user_service.dart';

class TradeSelectCard extends StatefulWidget {
  static const String routeName = "/TradeSelectCard";

  @override
  State<TradeSelectCard> createState() => _TradeSelectCardState();
}

class _TradeSelectCardState extends State<TradeSelectCard> {
  String? deviceId;
  User? user;
  List<Gamecard>? cards;
  List<Ability>? abilities;
  var deviceIdLoaded = false;
  var userLoaded = false;
  var cardsLoaded = false;
  var abilitiesLoaded = false;

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
        getUser(deviceId);
        getCardsByUser(deviceId);
      });
    }
  }

  getCardsByUser(deviceId) async {
    cards = await GamecardService().getGamecardsByUser(deviceId);
    if (cards != null) {
      setState(() {
        cardsLoaded = true;
        // getAbilities();
      });
    } else {
      setState(() {
        cardsLoaded = false;
      });
    }
  }

  // getAbilities() {
  //   Ability ability = await GamecardService().getGamecardsByUser(deviceId);
  // }

  getUser(deviceId) async {
    user = await UserService().getUserByDeviceId(deviceId);

    user ??= await UserService().postUser(User(
        id: 0,
        deviceId: deviceId,
        wins: 0,
        losses: 0,
        created: 0,
        traded: 0,
        collected: 0,
        cardIds: []));
    if (user != null) {
      setState(() {
        userLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // tradingwindowPty (26:586)
        padding: EdgeInsets.fromLTRB(27*fem, 31*fem, 26.25*fem, 6*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // iconographycaesarzknRam (26:599)
              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 45*fem),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 46*fem,
                  height: 46*fem,
                        child: Image.asset(
                          'assets/page-1/images/iconography-caesarzkn.png',
                          width: 46*fem,
                          height: 46*fem,
                        ),
                ),
              ),
            ),
            Container(
              // autogroup9jbjRDP (T1Sg1dRwC67mnSaHQW9jBj)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 18*fem),
              width: double.infinity,
              height: 234*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CollectionCardWidget(fem: fem, ffem: ffem, name: cards?[0].name ?? "loading",description: cards?[0].description ?? "loading",
                  ability: "kek", energy:cards?[0].energy ?? 0, health: cards?[0].health ?? 0, strength: cards?[0].strength ?? 0),
                  Container(
                    // alpeideaZzM (111:1191)
                    padding: EdgeInsets.fromLTRB(0*fem, 3.22*fem, 0*fem, 0*fem),
                    width: 156.01*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff47479d),
                      borderRadius: BorderRadius.circular(29*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupb7k1DJD (T1Sh16nAzicoBJpQPwb7k1)
                          margin: EdgeInsets.fromLTRB(13.26*fem, 0*fem, 6.75*fem, 8.56*fem),
                          width: double.infinity,
                          height: 107.78*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group13gBo (111:1199)
                                left: 103.467590332*fem,
                                top: 0*fem,
                                child: Container(
                                  width: 32.53*fem,
                                  height: 27.16*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // group9YE1 (111:1200)
                                        left: 3.3150024414*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 29.22*fem,
                                            height: 27.16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/group-9-4Ey.png',
                                              width: 29.22*fem,
                                              height: 27.16*fem,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // PkR (111:1204)
                                        left: 0*fem,
                                        top: 1.3906860352*fem,
                                        child: Center(
                                          child: Align(
                                            child: SizedBox(
                                              width: 11*fem,
                                              height: 22*fem,
                                              child: Text(
                                                '4',
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
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // topfdergierDUZ (111:1206)
                                left: 0*fem,
                                top: 1.2813110352*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 67*fem,
                                    height: 22*fem,
                                    child: Text(
                                      'Alpheidae',
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.4666666667*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // j783yp1EPf (111:1383)
                                left: 0*fem,
                                top: 25.7813110352*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 130*fem,
                                    height: 82*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/j783yp-1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogrouporvo47o (T1Sh9vro5MqA551zFcoRVo)
                          margin: EdgeInsets.fromLTRB(10.05*fem, 0*fem, 10.93*fem, 8.39*fem),
                          width: double.infinity,
                          height: 76.44*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group10vA1 (111:1193)
                                left: 0*fem,
                                top: 0*fem,
                                child: Container(
                                  width: 135.03*fem,
                                  height: 76.44*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogroupflmszff (T1ShJFxFTFMRQMYca2fLMs)
                                        margin: EdgeInsets.fromLTRB(0.21*fem, 0*fem, 0*fem, 51.87*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // vector8strokeH8y (111:1194)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0.39*fem, 107.29*fem, 0*fem),
                                              width: 13.11*fem,
                                              height: 12.09*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-2Wh.png',
                                                width: 13.11*fem,
                                                height: 12.09*fem,
                                              ),
                                            ),
                                            Container(
                                              // vector8strokeLd3 (111:1195)
                                              width: 14.42*fem,
                                              height: 10.99*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-x69.png',
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupqssbeNq (T1ShPb8hccj7Nn3VerQssb)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // vector8strokewsj (111:1196)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107.5*fem, 0*fem),
                                              width: 14.42*fem,
                                              height: 10.99*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-mPb.png',
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                              ),
                                            ),
                                            Container(
                                              // vector8stroke28V (111:1197)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                              width: 13.11*fem,
                                              height: 12.09*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-2aq.png',
                                                width: 13.11*fem,
                                                height: 12.09*fem,
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
                                // roundstartdeal3damagetoarandom (111:1205)
                                left: 13.2087402344*fem,
                                top: 5.4374389648*fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 108*fem,
                                      height: 66*fem,
                                      child: Text(
                                        'Round start:\nDeal 3 damage to a random enemy  ',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.6923076923*ffem/fem,
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
                          // autogroupih5wf4y (T1Shh5dZCyvTyUZ1X7ih5w)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.18*fem, 0*fem),
                          width: double.infinity,
                          height: 29.61*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroupb2p7LS1 (T1ShoQnLmrgM4rPogUB2P7)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.83*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(13.74*fem, 0*fem, 0*fem, 0*fem),
                                width: 41.78*fem,
                                height: double.infinity,
                                child: Container(
                                  // group12DEu (111:1208)
                                  width: double.infinity,
                                  height: 22*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        // Wjo (111:1214)
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.69*fem, 0*fem),
                                          child: Text(
                                            '2',
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
                                      Container(
                                        // group7Zxy (111:1209)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.67*fem, 0*fem, 0*fem),
                                        width: 14.35*fem,
                                        height: 18.83*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-7-vBP.png',
                                          width: 14.35*fem,
                                          height: 18.83*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group11dC9 (111:1215)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.36*fem),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // XoK (111:1216)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.37*fem, 0*fem),
                                        child: Text(
                                          '1',
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
                                    Container(
                                      // group8QcD (111:1217)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0.41*fem, 0*fem, 0*fem),
                                      width: 21.85*fem,
                                      height: 20.31*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-8-B65.png',
                                        width: 21.85*fem,
                                        height: 20.31*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup5s5tt1b (T1SiSE4LCgc5KLD1iy5S5T)
              margin: EdgeInsets.fromLTRB(3.74*fem, 0*fem, 0*fem, 18*fem),
              width: double.infinity,
              height: 234*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // middleleftkJh (111:1268)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23.99*fem, 0*fem),
                    width: 156.01*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle38cLu (111:1269)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 156.01*fem,
                              height: 234*fem,
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
                          // group82fX (111:1387)
                          left: 100.2598876953*fem,
                          top: 152*fem,
                          child: Align(
                            child: SizedBox(
                              width: 15*fem,
                              height: 13.31*fem,
                              child: Image.asset(
                                'assets/page-1/images/group-8-rkd.png',
                                width: 15*fem,
                                height: 13.31*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // group10Sz9 (111:1270)
                          left: 10.0511474609*fem,
                          top: 119.5625*fem,
                          child: Container(
                            width: 135.03*fem,
                            height: 76.44*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupkwadK2M (T1SivJ5tqKw8GTmTqLKwAd)
                                  margin: EdgeInsets.fromLTRB(0.21*fem, 0*fem, 0*fem, 51.87*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // vector8strokeCrq (111:1271)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.39*fem, 107.29*fem, 0*fem),
                                        width: 13.11*fem,
                                        height: 12.09*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-8-stroke-3VX.png',
                                          width: 13.11*fem,
                                          height: 12.09*fem,
                                        ),
                                      ),
                                      Container(
                                        // vector8strokeFq7 (111:1272)
                                        width: 14.42*fem,
                                        height: 10.99*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-8-stroke-pwX.png',
                                          width: 14.42*fem,
                                          height: 10.99*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogrouprsa5kG5 (T1Sj28FWhSzuoMwJTRRsa5)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // vector8stroke2Db (111:1273)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107.5*fem, 0*fem),
                                        width: 14.42*fem,
                                        height: 10.99*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-8-stroke-mFK.png',
                                          width: 14.42*fem,
                                          height: 10.99*fem,
                                        ),
                                      ),
                                      Container(
                                        // vector8stroke6UM (111:1274)
                                        width: 13.11*fem,
                                        height: 12.09*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-8-stroke-ooB.png',
                                          width: 13.11*fem,
                                          height: 12.09*fem,
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
                          // group13z3w (111:1276)
                          left: 116.7274780273*fem,
                          top: 3.21875*fem,
                          child: Container(
                            width: 32.53*fem,
                            height: 27.16*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group9Ty7 (111:1277)
                                  left: 3.3150024414*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 29.22*fem,
                                      height: 27.16*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-9-yUh.png',
                                        width: 29.22*fem,
                                        height: 27.16*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // WRb (111:1281)
                                  left: 0*fem,
                                  top: 1.390625*fem,
                                  child: Center(
                                    child: Align(
                                      child: SizedBox(
                                        width: 11*fem,
                                        height: 22*fem,
                                        child: Text(
                                          '2',
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
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // roundstartregenerate1ofeveryal (111:1282)
                          left: 24.7598876953*fem,
                          top: 125*fem,
                          child: Center(
                            child: Align(
                              child: SizedBox(
                                width: 105*fem,
                                height: 66*fem,
                                child: Text(
                                  'Round start:\nregenerate 1        of every ally',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'SF Pro Display',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6923076923*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // topfdergier741 (111:1283)
                          left: 13.2598876953*fem,
                          top: 4.5*fem,
                          child: Align(
                            child: SizedBox(
                              width: 54*fem,
                              height: 22*fem,
                              child: Text(
                                'Old tree',
                                style: SafeGoogleFont (
                                  'SF Pro Display',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.4666666667*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // image1YQD (111:1386)
                          left: 13.2598876953*fem,
                          top: 29*fem,
                          child: Align(
                            child: SizedBox(
                              width: 130*fem,
                              height: 82*fem,
                              child: Image.asset(
                                'assets/page-1/images/image-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // group12arh (111:1285)
                          left: 13.7361450195*fem,
                          top: 204.390625*fem,
                          child: Container(
                            width: 28.04*fem,
                            height: 22*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // Stu (111:1291)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.69*fem, 0*fem),
                                    child: Text(
                                      '0',
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
                                Container(
                                  // group7KC1 (111:1286)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.67*fem, 0*fem, 0*fem),
                                  width: 14.35*fem,
                                  height: 18.83*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-7-eWR.png',
                                    width: 14.35*fem,
                                    height: 18.83*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group11BED (111:1292)
                          left: 108.6094360352*fem,
                          top: 205.015625*fem,
                          child: Container(
                            width: 35.22*fem,
                            height: 22*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // eNh (111:1293)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.37*fem, 0*fem),
                                    child: Text(
                                      '4',
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
                                Container(
                                  // group8iNZ (111:1294)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.41*fem, 0*fem, 0*fem),
                                  width: 21.85*fem,
                                  height: 20.31*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-8-iz1.png',
                                    width: 21.85*fem,
                                    height: 20.31*fem,
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
                    // middlerightMgR (111:1384)
                    width: 156.01*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle38TDf (111:1231)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 156.01*fem,
                              height: 234*fem,
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
                          // group10HTb (111:1232)
                          left: 10.0511474609*fem,
                          top: 119.5625*fem,
                          child: Container(
                            width: 135.03*fem,
                            height: 76.44*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogrouphxzqAGV (T1SjWwkptDs76D1Bsghxzq)
                                  margin: EdgeInsets.fromLTRB(0.21*fem, 0*fem, 0*fem, 51.87*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // vector8strokepbw (111:1233)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.39*fem, 107.29*fem, 0*fem),
                                        width: 13.11*fem,
                                        height: 12.09*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-8-stroke-kgM.png',
                                          width: 13.11*fem,
                                          height: 12.09*fem,
                                        ),
                                      ),
                                      Container(
                                        // vector8stroket61 (111:1234)
                                        width: 14.42*fem,
                                        height: 10.99*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-8-stroke-Vu7.png',
                                          width: 14.42*fem,
                                          height: 10.99*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupjrtrNms (T1SjjminatcETnaS3UjRtR)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // vector8strokeGMT (111:1235)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107.5*fem, 0*fem),
                                        width: 14.42*fem,
                                        height: 10.99*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-8-stroke-7x9.png',
                                          width: 14.42*fem,
                                          height: 10.99*fem,
                                        ),
                                      ),
                                      Container(
                                        // vector8strokeL6R (111:1236)
                                        width: 13.11*fem,
                                        height: 12.09*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-8-stroke-VuX.png',
                                          width: 13.11*fem,
                                          height: 12.09*fem,
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
                          // group132V3 (111:1238)
                          left: 116.7274780273*fem,
                          top: 3.21875*fem,
                          child: Container(
                            width: 32.53*fem,
                            height: 27.16*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group97Fb (111:1239)
                                  left: 3.3150024414*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 29.22*fem,
                                      height: 27.16*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-9.png',
                                        width: 29.22*fem,
                                        height: 27.16*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // AzZ (111:1243)
                                  left: 0*fem,
                                  top: 1.390625*fem,
                                  child: Center(
                                    child: Align(
                                      child: SizedBox(
                                        width: 11*fem,
                                        height: 22*fem,
                                        child: Text(
                                          '3',
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
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // nonePsK (111:1244)
                          left: 62.7598876953*fem,
                          top: 147*fem,
                          child: Center(
                            child: Align(
                              child: SizedBox(
                                width: 29*fem,
                                height: 22*fem,
                                child: Text(
                                  'none',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'SF Pro Display',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6923076923*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // topfdergierRJD (111:1245)
                          left: 12.2598876953*fem,
                          top: 4.5*fem,
                          child: Align(
                            child: SizedBox(
                              width: 90*fem,
                              height: 22*fem,
                              child: Text(
                                'Monstertruck',
                                style: SafeGoogleFont (
                                  'SF Pro Display',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.4666666667*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // monstertruckfahrenfuerstenaux1 (111:1385)
                          left: 12.2598876953*fem,
                          top: 29*fem,
                          child: Align(
                            child: SizedBox(
                              width: 131*fem,
                              height: 82*fem,
                              child: Image.asset(
                                'assets/page-1/images/monster-truck-fahren-fuerstenaux11-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // group12Wiy (111:1247)
                          left: 13.7361450195*fem,
                          top: 204.390625*fem,
                          child: Container(
                            width: 28.04*fem,
                            height: 22*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // ze9 (111:1253)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.69*fem, 0*fem),
                                    child: Text(
                                      '4',
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
                                Container(
                                  // group73sK (111:1248)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.67*fem, 0*fem, 0*fem),
                                  width: 14.35*fem,
                                  height: 18.83*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-7-d5P.png',
                                    width: 14.35*fem,
                                    height: 18.83*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group11WF7 (111:1254)
                          left: 108.6094360352*fem,
                          top: 205.015625*fem,
                          child: Container(
                            width: 35.22*fem,
                            height: 22*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // Zz5 (111:1255)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.37*fem, 0*fem),
                                    child: Text(
                                      '4',
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
                                Container(
                                  // group8SHB (111:1256)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.41*fem, 0*fem, 0*fem),
                                  width: 21.85*fem,
                                  height: 20.31*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-8-4pM.png',
                                    width: 21.85*fem,
                                    height: 20.31*fem,
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
            Container(
              // autogroupepvzhU1 (T1Sk4r1LZyVZLL3eT5epvZ)
              margin: EdgeInsets.fromLTRB(2.74*fem, 0*fem, 1*fem, 0*fem),
              width: double.infinity,
              height: 234*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // bottomleftMYZ (111:1306)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23.99*fem, 0*fem),
                    width: 156.01*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle3828u (111:1307)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 156.01*fem,
                              height: 234*fem,
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
                          // group10FnM (111:1308)
                          left: 10.0511474609*fem,
                          top: 119.5625*fem,
                          child: Container(
                            width: 135.03*fem,
                            height: 76.44*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogrouplcrk85T (T1SkSRDj4pqN1FseZ1LCRK)
                                  margin: EdgeInsets.fromLTRB(0.21*fem, 0*fem, 0*fem, 51.87*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // vector8strokebzd (111:1309)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.39*fem, 107.29*fem, 0*fem),
                                        width: 13.11*fem,
                                        height: 12.09*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-8-stroke-PCh.png',
                                          width: 13.11*fem,
                                          height: 12.09*fem,
                                        ),
                                      ),
                                      Container(
                                        // vector8strokerff (111:1310)
                                        width: 14.42*fem,
                                        height: 10.99*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-8-stroke-SQM.png',
                                          width: 14.42*fem,
                                          height: 10.99*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupcyeh9em (T1SkXv4Zo7SRAWGBUvCYEH)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // vector8stroke2yT (111:1311)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107.5*fem, 0*fem),
                                        width: 14.42*fem,
                                        height: 10.99*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-8-stroke-y3b.png',
                                          width: 14.42*fem,
                                          height: 10.99*fem,
                                        ),
                                      ),
                                      Container(
                                        // vector8strokeJAH (111:1312)
                                        width: 13.11*fem,
                                        height: 12.09*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/vector-8-stroke-CjF.png',
                                          width: 13.11*fem,
                                          height: 12.09*fem,
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
                          // group13adb (111:1314)
                          left: 116.7274780273*fem,
                          top: 3.21875*fem,
                          child: Container(
                            width: 32.53*fem,
                            height: 27.16*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group9rb7 (111:1315)
                                  left: 3.3150024414*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 29.22*fem,
                                      height: 27.16*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-9-2ER.png',
                                        width: 29.22*fem,
                                        height: 27.16*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // U6h (111:1319)
                                  left: 0*fem,
                                  top: 1.390625*fem,
                                  child: Center(
                                    child: Align(
                                      child: SizedBox(
                                        width: 11*fem,
                                        height: 22*fem,
                                        child: Text(
                                          '5',
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
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // roundstartstealsthestrongesten (111:1320)
                          left: 20.7598876953*fem,
                          top: 125*fem,
                          child: Center(
                            child: Align(
                              child: SizedBox(
                                width: 113*fem,
                                height: 66*fem,
                                child: Text(
                                  'Round start:\nSteals the strongest enemy for 1 turn',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'SF Pro Display',
                                    fontSize: 13*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.6923076923*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // topfdergierTcq (111:1321)
                          left: 13.2598876953*fem,
                          top: 4.5*fem,
                          child: Align(
                            child: SizedBox(
                              width: 85*fem,
                              height: 22*fem,
                              child: Text(
                                'Programmer',
                                style: SafeGoogleFont (
                                  'SF Pro Display',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.4666666667*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // bjarnestroustrup1fiu (111:1393)
                          left: 13.2598876953*fem,
                          top: 29*fem,
                          child: Align(
                            child: SizedBox(
                              width: 130*fem,
                              height: 82*fem,
                              child: Image.asset(
                                'assets/page-1/images/bjarnestroustrup-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // group1286h (111:1323)
                          left: 13.7361450195*fem,
                          top: 204.390625*fem,
                          child: Container(
                            width: 28.04*fem,
                            height: 22*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // zub (111:1329)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.69*fem, 0*fem),
                                    child: Text(
                                      '3',
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
                                Container(
                                  // group7rS1 (111:1324)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.67*fem, 0*fem, 0*fem),
                                  width: 14.35*fem,
                                  height: 18.83*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-7-uNm.png',
                                    width: 14.35*fem,
                                    height: 18.83*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group11uv5 (111:1330)
                          left: 108.6094360352*fem,
                          top: 205.015625*fem,
                          child: Container(
                            width: 35.22*fem,
                            height: 22*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  // yuw (111:1331)
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.37*fem, 0*fem),
                                    child: Text(
                                      '1',
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
                                Container(
                                  // group8D3b (111:1332)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.41*fem, 0*fem, 0*fem),
                                  width: 21.85*fem,
                                  height: 20.31*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-8-8Yu.png',
                                    width: 21.85*fem,
                                    height: 20.31*fem,
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
                    // bottomrightTCq (111:1344)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(0*fem, 3.22*fem, 0*fem, 0*fem),
                    width: 156.01*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff47479d),
                      borderRadius: BorderRadius.circular(29*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupfuxfgLV (T1SkxjgYMrmqyXxQb4fUXF)
                          margin: EdgeInsets.fromLTRB(12.26*fem, 0*fem, 6.75*fem, 8.56*fem),
                          width: double.infinity,
                          height: 107.78*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group13Z9P (111:1352)
                                left: 104.467590332*fem,
                                top: 0*fem,
                                child: Container(
                                  width: 32.53*fem,
                                  height: 27.16*fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // group9EFX (111:1353)
                                        left: 3.3150024414*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 29.22*fem,
                                            height: 27.16*fem,
                                            child: Image.asset(
                                              'assets/page-1/images/group-9-3pq.png',
                                              width: 29.22*fem,
                                              height: 27.16*fem,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // gdK (111:1357)
                                        left: 0*fem,
                                        top: 1.390625*fem,
                                        child: Center(
                                          child: Align(
                                            child: SizedBox(
                                              width: 11*fem,
                                              height: 22*fem,
                                              child: Text(
                                                '0',
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
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // topfdergieruW5 (111:1359)
                                left: 1*fem,
                                top: 1.28125*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 50*fem,
                                    height: 22*fem,
                                    child: Text(
                                      'Zombie',
                                      style: SafeGoogleFont (
                                        'SF Pro Display',
                                        fontSize: 15*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.4666666667*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // ae3a1d2aa08c5f2dc2a4481b25yyay (111:1394)
                                left: 0*fem,
                                top: 25.78125*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 131*fem,
                                    height: 82*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/ae3a1d2aa08c5f2dc2a4481b25yyaynjq0ede0odcrmtiwkzewanjlide5mjagmta4mamxymfhmja1zge4mg-1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupn8rhMmP (T1SmBp95uuN28MN8XVN8rh)
                          margin: EdgeInsets.fromLTRB(10.05*fem, 0*fem, 10.93*fem, 8.39*fem),
                          width: double.infinity,
                          height: 76.44*fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group10Snq (111:1346)
                                left: 0*fem,
                                top: 0*fem,
                                child: Container(
                                  width: 135.03*fem,
                                  height: 76.44*fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogrouphepwK5w (T1SmMeC3Q3xa94udThHEPw)
                                        margin: EdgeInsets.fromLTRB(0.21*fem, 0*fem, 0*fem, 51.87*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // vector8strokec53 (111:1347)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0.39*fem, 107.29*fem, 0*fem),
                                              width: 13.11*fem,
                                              height: 12.09*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-UaH.png',
                                                width: 13.11*fem,
                                                height: 12.09*fem,
                                              ),
                                            ),
                                            Container(
                                              // vector8strokesWm (111:1348)
                                              width: 14.42*fem,
                                              height: 10.99*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke.png',
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // autogroupunm3yZo (T1SmStYJGxiaX5TgcyUNm3)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              // vector8strokeVHF (111:1349)
                                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107.5*fem, 0*fem),
                                              width: 14.42*fem,
                                              height: 10.99*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-g1j.png',
                                                width: 14.42*fem,
                                                height: 10.99*fem,
                                              ),
                                            ),
                                            Container(
                                              // vector8strokeNbw (111:1350)
                                              width: 13.11*fem,
                                              height: 12.09*fem,
                                              child: Image.asset(
                                                'assets/page-1/images/vector-8-stroke-18y.png',
                                                width: 13.11*fem,
                                                height: 12.09*fem,
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
                                // roundendloses1rn1 (111:1358)
                                left: 34.2087402344*fem,
                                top: 16.4375*fem,
                                child: Center(
                                  child: Align(
                                    child: SizedBox(
                                      width: 66*fem,
                                      height: 44*fem,
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          style: SafeGoogleFont (
                                            'SF Pro Display',
                                            fontSize: 13*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.6923076923*ffem/fem,
                                            color: Color(0xffffffff),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'Round end:\nLoses 1   ',
                                            ),
                                            TextSpan(
                                              text: '.',
                                              style: SafeGoogleFont (
                                                'SF Pro Display',
                                                fontSize: 13*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.6923076923*ffem/fem,
                                                color: Color(0xff47479d),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // group8CFX (111:1395)
                                left: 85.2087402344*fem,
                                top: 43.4375*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 16*fem,
                                    height: 14*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/group-8.png',
                                      width: 16*fem,
                                      height: 14*fem,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroup9shoqJV (T1SmcPGUdGrQA9Dss19sho)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.18*fem, 0*fem),
                          width: double.infinity,
                          height: 29.61*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogrouptzgdKUZ (T1SmkYhYSF9JJbrrLKtzGd)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66.83*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(13.74*fem, 0*fem, 0*fem, 0*fem),
                                width: 41.78*fem,
                                height: double.infinity,
                                child: Container(
                                  // group12bgy (111:1361)
                                  width: double.infinity,
                                  height: 22*fem,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        // 79X (111:1367)
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.69*fem, 0*fem),
                                          child: Text(
                                            '1',
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
                                      Container(
                                        // group7ANh (111:1362)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0.67*fem, 0*fem, 0*fem),
                                        width: 14.35*fem,
                                        height: 18.83*fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-7.png',
                                          width: 14.35*fem,
                                          height: 18.83*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group11dn5 (111:1368)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6.36*fem),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      // j4R (111:1369)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.37*fem, 0*fem),
                                        child: Text(
                                          '2',
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
                                    Container(
                                      // group8aqj (111:1370)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0.41*fem, 0*fem, 0*fem),
                                      width: 21.85*fem,
                                      height: 20.31*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-8-HX3.png',
                                        width: 21.85*fem,
                                        height: 20.31*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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