import 'package:flutter/material.dart';
import 'package:myapp/screens/trade/confirm_trade/confirm_trade.dart';
import 'package:myapp/services/trade_service.dart';
import '../../../models/screen_argument.dart';
import '../../../models/trade.dart';
import '../../../widgets/big_card.dart';

// class head of the Confirm Card page
class TradeConfirmCard extends StatefulWidget {
  const TradeConfirmCard({super.key});

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

  // main widget for this page
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArgument;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Spacing Container
            Expanded(flex: 1, child: Container()),
            // Button row at the top
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffffffff),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      updateTradeCardId(args.deviceId, args.card.id);
                      Navigator.pop(context);
                      Navigator.pushNamed(
                        context,
                        TradingConfirmTrade.routeName,
                        arguments: args,
                      );
                    },
                    icon: const Icon(
                      Icons.check,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
            // display a big card
            Expanded(
              flex: 10,
              child: BigCard(
                fem: fem,
                ffem: ffem,
                args: args,
              ),
            ),
            // Spacing Container
            Expanded(
              flex: 2,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
