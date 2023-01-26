import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/custom_icons_icons.dart';
import 'package:myapp/screens/collection/collection.dart';
import 'package:myapp/screens/create/start/create-start.dart';
import 'package:myapp/screens/fight/start/fight-start.dart';
import 'package:myapp/screens/trade/confirm_card/trading-window-ifX.dart';
import 'package:myapp/screens/trade/confirm_trade/trading-window.dart';
import 'package:myapp/screens/trade/qr_code/trade-scan-code.dart';
import 'package:myapp/screens/trade/select_card/trading-window-41b.dart';
import 'package:myapp/screens/trade/start/trade-start.dart';
import 'package:myapp/utils.dart';

// import 'package:myapp/screens/home/atomgood-1.dart';
import 'package:myapp/screens/home/home.dart';

// import 'package:myapp/screens/collection/collection.dart';

// import 'package:myapp/screens/create/start/create-start.dart';
// import 'package:myapp/screens/create/points/create-points.dart';
// import 'package:myapp/screens/create/ability_list/create-ability-list.dart';
// import 'package:myapp/screens/create/points/create-points-ii.dart';
// import 'package:myapp/screens/create/preview/create-preview.dart';

// import 'package:myapp/screens/details/details.dart';

// import 'package:myapp/screens/fight/start/fight-start.dart';
// import 'package:myapp/screens/fight/qr_code/fight-scan-code.dart';
// import 'package:myapp/screens/fight/board/fight-board.dart';

// import 'package:myapp/screens/trade/start/trade-start.dart';
// import 'package:myapp/screens/trade/qr_code/trade-scan-code.dart';
// import 'package:myapp/screens/trade/select_card/trading-window-41b.dart';
// import 'package:myapp/screens/trade/confirm_card/trading-window-ifX.dart';
// import 'package:myapp/screens/trade/confirm_trade/trading-window.dart';

// import 'package:myapp/widgets/inputs.dart';
// import 'package:myapp/widgets/other-slider.dart';
// import 'package:myapp/widgets/tab-bar-ios-5-tabs-handwriting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidget();
}

class _MyStatefulWidget extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List pages = [
    FightStart(),
    TradeStart(),
    Home(),
    CreateStart(),
    Collection()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        FightStart.routeName: (BuildContext context) => FightStart(),
        TradeStart.routeName: (BuildContext context) => const TradeStart(),
        Home.routeName: (BuildContext context) => Home(),
        CreateStart.routeName: (BuildContext context) => CreateStart(),
        Collection.routeName: (BuildContext context) => Collection(),

        TradeQR.routeName: (BuildContext context) => TradeQR(),
        TradeSelectCard.routeName: (BuildContext context) => TradeSelectCard(),
        TradeConfirmCard.routeName: (BuildContext context) => TradeConfirmCard(),
        TradingConfirmTrade.routeName: (BuildContext context) => TradingConfirmTrade(),
      },
// When navigating to the "/" route, build the FirstScreen widget.
//'/Home': (context) => Home(),
// When navigating to the "/second" route, build the SecondScreen widget.
        /*'/CreateStart': (context) => CreateStart(),
        '/FightStart': (context) => FightStart(),
        '/TradeStart': (context) => TradeStart(),
        '/TradeScanQR': (context) => TradeQR(),
        '/TradeSelectCard': (context) => TradeSelectCard(),
        '/TradeConfirmCard': (context) => TradeConfirmCard(),
        '/TradeConfirm': (context) => TradeStart(),
        '/Collection': (context) => Collection(),
      },*/

      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xff202024),
            type: BottomNavigationBarType.fixed,
            iconSize: 40,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white30,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.colorize_rounded), label: 'Fight'),
              BottomNavigationBarItem(icon: Icon(Icons.wifi_protected_setup_rounded), label: 'Trade'),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Create'),
              BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Collection') //apps, view_module_rounded
            ]),
      ),
    );
  }
}
