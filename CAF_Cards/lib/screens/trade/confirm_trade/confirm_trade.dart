import 'package:flutter/material.dart';
import 'package:myapp/screens/home/home.dart';
import 'package:myapp/services/card_service.dart';
import 'package:myapp/services/user_service.dart';
import 'package:myapp/utils.dart';
import '../../../models/Gamecard.dart';
import '../../../models/trade.dart';
import '../../../services/helper_service.dart';
import '../../../services/trade_service.dart';

class TradingConfirmTrade extends StatefulWidget {
  const TradingConfirmTrade({super.key});

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
  bool waiting = false;

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
      await getTrade(deviceId);
      await Future.delayed(const Duration(milliseconds: 500));
    }
  }

  finishTrade(context) async {
    while (waiting == true) {
      await getTrade(deviceId);
      if (trade!.receiverAccepted && trade!.senderAccepted) {
        if (trade!.canBeDeleted) {
          await UserService().tradeCards(deviceId!);
          await deleteTrade();
        }
        await TradeService().updateDeleted(deviceId!, true);

        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Home(),
        ));
      }
      if (trade!.canBeDeleted && !(trade!.receiverAccepted && trade!.senderAccepted)) {
        await deleteTrade();
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Home(),
        ));
      }
      await Future.delayed(const Duration(milliseconds: 500));
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

  accept(context) async {
    waiting = true;
    await TradeService().updateAccept(deviceId!, true);
    await finishTrade(context);
  }

  decline() async {
    waiting = false;
    await TradeService().updateAccept(deviceId!, false);
  }

  deleteTrade() async {
    await TradeService().deleteTradeByDeviceId(deviceId!);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(0 * fem, 61 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    decline();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xffffffff),
                  ),
                ),
                Visibility(
                  visible: waiting,
                  replacement: IconButton(
                    onPressed: () {
                      accept(context);
                    },
                    icon: const Icon(
                      Icons.check,
                      color: Color(0xffffffff),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      decline();
                    },
                    icon: const Icon(
                      Icons.stop,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                  11.99 * fem, 132 * fem, 10 * fem, 24 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 201 * fem),
                    width: double.infinity,
                    height: 267 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 14.99 * fem, 0 * fem),
                          width: 178.01 * fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
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
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Container(
                                  width: 178.01 * fem,
                                  height: 267 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
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
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
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
                                        left: 133.9661865234 * fem,
                                        top: 3.672668457 * fem,
                                        child: Container(
                                          width: 36.34 * fem,
                                          height: 30.99 * fem,
                                          child: Stack(
                                            children: [
                                              Positioned(
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
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: 178.01 * fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
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
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Container(
                                  width: 178.01 * fem,
                                  height: 267 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
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
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
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
                                        left: 133.9659423828 * fem,
                                        top: 3.672668457 * fem,
                                        child: Container(
                                          width: 36.34 * fem,
                                          height: 30.99 * fem,
                                          child: Stack(
                                            children: [
                                              Positioned(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
