import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'package:qr_flutter/qr_flutter.dart';

import '../../collection/collection.dart';
import '../../create/start/create-start.dart';
import '../../fight/start/fight-start.dart';
import '../../home/home.dart';
import '../confirm_card/trading-window-ifX.dart';
import '../confirm_trade/trading-window.dart';
import 'trade-scan-qr-code.dart';
import '../select_card/trading-window-41b.dart';

class TradeStart extends StatelessWidget {
  const TradeStart({super.key});
  static const String routeName = '/TradeStart';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        FightStart.routeName: (BuildContext context) => FightStart(),
        TradeStart.routeName: (BuildContext context) => const TradeStart(),
        Home.routeName: (BuildContext context) => Home(),
        CreateStart.routeName: (BuildContext context) => CreateStart(),
        Collection.routeName: (BuildContext context) => Collection(),
        TradeSelectCard.routeName: (BuildContext context) => TradeSelectCard(),
        TradeConfirmCard.routeName: (BuildContext context) =>
            TradeConfirmCard(),
        TradingConfirmTrade.routeName: (BuildContext context) =>
            TradingConfirmTrade(),
      },
      home: TradeStartWidget(),
    );
  }
}

class TradeStartWidget extends StatefulWidget {
  const TradeStartWidget({super.key});
  @override
  State<TradeStartWidget> createState() => _TradeStartWidget();
}

class _TradeStartWidget extends State<TradeStartWidget> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: Container(
        width: double.infinity,
        child: Container(
          // Create a container where everything else is located
          padding: EdgeInsets.fromLTRB(9 * fem, 79 * fem, 9 * fem, 0 * fem),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xff202024),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Heading
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/TradeSelectCard');
                  },
                  child: Text(
                    'Start a trade',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'SF Pro Display',
                      fontSize: 64 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2575 * ffem / fem,
                      letterSpacing: -0.2399999946 * fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              // Text BOX
              Expanded(
                flex: 2,
                child: Text(
                  'Let a friend scan this QR-code or scan a code yourself by clicking the button',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'SF Pro Display',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2575 * ffem / fem,
                    letterSpacing: -0.2399999946 * fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              // QR Code generation
              Expanded(
                flex: 5,
                child: Center(
                  child: QrImage(
                      data: 'this is different data',
                      size: 300,
                      backgroundColor: Colors.white),
                ),
              ),
              // Scan Qr Code button
              Expanded(
                flex: 3,
                child: Center(
                  child: ElevatedButton(
                    onPressed: /**/ () {
                      //Navigator.pushNamed(context, '/TradeQR');
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyQRView(),
                      ));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Color(0xff000080),
                    ),
                    child: Container(
                      width: 200 * fem,
                      height: 50 * fem,
                      child: Center(
                        child: Text(
                          'Scan  QR-Code',
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
      ),
    );
  }
}
