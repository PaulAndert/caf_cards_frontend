import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screens/collection/collection.dart';
import 'package:myapp/screens/create/start/create-start.dart';
import 'package:myapp/screens/fight/start/fight-start.dart';
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
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		initialRoute: '/',
		routes: {
			// When navigating to the "/" route, build the FirstScreen widget.
			//'/Home': (context) => Home(),
			// When navigating to the "/second" route, build the SecondScreen widget.
			'/CreateStart': (context) => CreateStart(),
			'/FightStart': (context) => FightStart(),
			'/TradeStart': (context) => TradeStart(),
			'/TradeScanQR': (context) => TradeStart(),
			'/TradeSelect': (context) => TradeStart(),
			'/TradeConfirmCard': (context) => TradeStart(),
			'/TradeConfirm': (context) => TradeStart(),
			'/Collection': (context) => Collection(),
		},
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: Home(),
		),
		),
	);
	}
}
