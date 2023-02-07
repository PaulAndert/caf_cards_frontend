import 'package:flutter/material.dart';
import 'package:myapp/models/trade.dart';
import 'package:myapp/services/trade_service.dart';
import 'package:myapp/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../services/helper_service.dart';
import '../../collection/collection.dart';
import '../../create/points/points.dart';
import '../../create/start/start.dart';
import '../../fight/start/start.dart';
import '../../home/home.dart';
import '../confirm_card/confirm_card.dart';
import '../confirm_trade/confirm_trade.dart';
import 'scan_qr.dart';
import '../select_card/select_card.dart';

// class head of the Trade Start page
class TradeStart extends StatelessWidget {
  const TradeStart({super.key});

  static const String routeName = '/TradeStart';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        FightStart.routeName: (BuildContext context) => const FightStart(),
        TradeStart.routeName: (BuildContext context) => const TradeStart(),
        Home.routeName: (BuildContext context) => const Home(),
        CreateStart.routeName: (BuildContext context) => const CreateStart(),
        CreatePoints.routeName: (BuildContext context) => const CreatePoints(),
        Collection.routeName: (BuildContext context) => const Collection(),
        TradeSelectCard.routeName: (BuildContext context) =>
            const TradeSelectCard(),
        TradeConfirmCard.routeName: (BuildContext context) =>
            const TradeConfirmCard(),
        TradingConfirmTrade.routeName: (BuildContext context) =>
            const TradingConfirmTrade(),
      },
      // call the TradeStart Widget
      home: const TradeStartWidget(),
    );
  }
}

class TradeStartWidget extends StatefulWidget {
  const TradeStartWidget({super.key});

  @override
  State<TradeStartWidget> createState() => _TradeStartWidget();
}

class _TradeStartWidget extends State<TradeStartWidget> {
  String? deviceId;
  var deviceIdLoaded = false;
  Trade? trade;
  var tradeLoaded = false;

  // function to get the current device ID
  getDeviceId() async {
    deviceId = await HelperService().getUserId();
    if (deviceId != null) {
      setState(() {
        deviceIdLoaded = true;
      });
    }
    while (tradeLoaded == false) {
      getTrade();
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  // function to get the current trade
  getTrade() async {
    if (deviceIdLoaded == true) {
      trade = await TradeService().getTradeByDeviceId(deviceId!);
      if (trade != null) {
        setState(() {
          tradeLoaded = true;
        });
      }
    }
  }

  // when starting the page this function is called
  @override
  void initState() {
    super.initState();
    getDeviceId();
  }

  // main widget for this page
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: Container(
        // Create a container where everything else is located
        padding: EdgeInsets.fromLTRB(9 * fem, 79 * fem, 9 * fem, 0 * fem),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
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
                    fontSize: 60 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2575 * ffem / fem,
                    letterSpacing: -0.2399999946 * fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ),
            // Text
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
                child: Visibility(
                  visible: deviceIdLoaded,
                  replacement: const CircularProgressIndicator(),
                  child: QrImage(
                      data: deviceId ?? "dummy",
                      size: 250 * fem,
                      backgroundColor: Colors.white),
                ),
              ),
            ),
            // Scan Qr Code button
            Expanded(
              flex: 3,
              child: Center(
                child: Visibility(
                  visible: tradeLoaded,
                  replacement: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyQRView(),
                      ));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.deepPurpleAccent,
                    ),
                    child: Container(
                      width: 200 * fem,
                      height: 50 * fem,
                      child: Center(
                        child: Text(
                          "Scan QR-Code",
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 25 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2941176471 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/TradeSelectCard');
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.deepPurpleAccent,
                    ),
                    child: Container(
                      width: 200 * fem,
                      height: 50 * fem,
                      child: Center(
                        child: Text(
                          "Start trade",
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 25 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2941176471 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
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
    );
  }
}
