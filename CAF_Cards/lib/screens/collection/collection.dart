import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import '../../models/ability.dart';
import '../../models/gamecard.dart';
import '../../models/user.dart';
import '../../services/card_service.dart';
import '../../services/helper_service.dart';

class Collection extends StatelessWidget {
  static const String routeName = "/Collection";
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return
        GridBuilder();
  }
}

class GridBuilder extends StatefulWidget {
  const GridBuilder({
    super.key,
  });


  @override
  GridBuilderState createState() => GridBuilderState();
}

class GridBuilderState extends State<GridBuilder> {
  String? deviceId;
  List<Gamecard>? cards;
  List<Ability>? abilities;
  var deviceIdLoaded = false;
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

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: cards?.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (_, int index) {
          return GridTile(
            child: Container(
              color: Colors.blue,
            ),
          );
        }
    );
  }
}