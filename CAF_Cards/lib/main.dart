import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/trading-window.dart';
// import 'package:myapp/page-1/trading-window-41b.dart';
// import 'package:myapp/page-1/create-ability-list.dart';
// import 'package:myapp/page-1/trading-window-ifX.dart';
// import 'package:myapp/page-1/create-start.dart';
// import 'package:myapp/page-1/create-points.dart';
// import 'package:myapp/page-1/create-points-ii.dart';
// import 'package:myapp/page-1/create-preview.dart';
// import 'package:myapp/page-1/collection.dart';
// import 'package:myapp/page-1/details.dart';
// import 'package:myapp/page-1/fight-board.dart';
// import 'package:myapp/page-1/fight-scan-code.dart';
// import 'package:myapp/page-1/trade-scan-code.dart';
// import 'package:myapp/page-1/fight-start.dart';
// import 'package:myapp/page-1/trade-start.dart';
// import 'package:myapp/page-1/home.dart';
// import 'package:myapp/page-1/prototype-by-marius-pest-pascal-treue-paul-andert.dart';
// import 'package:myapp/page-1/tab-bar-ios-5-tabs-handwriting.dart';
// import 'package:myapp/page-1/other-slider.dart';
// import 'package:myapp/page-1/inputs.dart';
// import 'package:myapp/page-1/atomgood-1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: Scene(),
		),
		),
	);
	}
}
