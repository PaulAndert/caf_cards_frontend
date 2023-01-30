import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/CollectionCardWidget.dart';

import '../../models/ability.dart';
import '../../models/gamecard.dart';
import '../../models/user.dart';
import '../../services/card_service.dart';
import '../../services/helper_service.dart';

var fem;
var ffem;

class Collection extends StatelessWidget {
  static const String routeName = "/Collection";
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    fem = MediaQuery.of(context).size.width / baseWidth;
    ffem = fem * 0.97;
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
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xff202024),
        ),
        child: GridView.builder(
            itemCount: cards?.length ?? 0,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (_, int index) {
              return GridTile(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                  alignment: Alignment.center,
                  child: CollectionCardWidget(
                    fem: fem,
                    ffem: ffem,
                    name: cards?[index].name ?? "...",
                    description: cards?[index].description ?? "...",
                    energy: cards?[index].energy ?? 0,
                    strength: cards?[index].strength ?? 0,
                    health: cards?[index].health ?? 0,
                    ability: "...",
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}