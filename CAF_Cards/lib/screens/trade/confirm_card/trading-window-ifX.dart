import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/trade/confirm_trade/trading-window.dart';
import 'package:myapp/services/trade_service.dart';
import 'package:myapp/utils.dart';

import '../../../models/ScreenArguments.dart';
import '../../../models/trade.dart';
import '../../../widgets/card_fullscreen_widget.dart';

class TradeConfirmCard extends StatefulWidget {
  static const String routeName = "/TradeConfirmCard";

  @override
  State<TradeConfirmCard> createState() => _TradeConfirmCardState();
}

class _TradeConfirmCardState extends State<TradeConfirmCard> {
  Trade? trade;

  bool tradeLoaded = false;

  updateTradeCardId(deviceId, cardId) async {
    trade = await TradeService().updateCardId(deviceId, cardId);
    if (trade != null) {
      setState(() {
        tradeLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: Container(
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
                margin:
                    EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 16 * fem),
                width: 382 * fem,
                height: 66 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                child: Stack(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              updateTradeCardId(args.deviceId, args.card.id);
                              Navigator.pop(context);
                              Navigator.pushNamed(
                                  context, TradingConfirmTrade.routeName,
                                  arguments: args);
                            },
                            icon: const Icon(Icons.check,
                                color: Color(0xffffffff)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: card_fullscreen_widget(fem: fem, ffem: ffem, args: args),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
