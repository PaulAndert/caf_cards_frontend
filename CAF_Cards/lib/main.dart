import 'package:flutter/material.dart';
import 'package:myapp/screens/collection/collection.dart';
import 'package:myapp/screens/create/points/points.dart';
import 'package:myapp/screens/create/start/start.dart';
import 'package:myapp/screens/details/details.dart';
import 'package:myapp/screens/fight/start/start.dart';
import 'package:myapp/screens/trade/confirm_card/confirm_card.dart';
import 'package:myapp/screens/trade/confirm_trade/confirm_trade.dart';
import 'package:myapp/screens/trade/select_card/select_card.dart';
import 'package:myapp/screens/trade/start/start.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/screens/home/home.dart';

int selectedIndex = 2;

void main() => runApp(const MyApp());

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

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List pages = [
    const FightStart(),
    const TradeStart(),
    const Home(),
    const CreateStart(),
    const Collection(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CAF',
      initialRoute: '/',
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
        Details.routeName: (BuildContext context) => const Details(),
      },
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff202024),
          type: BottomNavigationBarType.fixed,
          iconSize: 40,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white30,
          currentIndex: selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.colorize_rounded), label: 'Fight'),
            BottomNavigationBarItem(
                icon: Icon(Icons.wifi_protected_setup_rounded), label: 'Trade'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline), label: 'Create'),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps), label: 'Collection'),
          ],
        ),
      ),
    );
  }
}
