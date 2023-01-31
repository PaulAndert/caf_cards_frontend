import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/ScreenArguments.dart';
import 'package:myapp/models/ability.dart';
import 'package:myapp/screens/trade/confirm_card/trading-window-ifX.dart';
import 'package:myapp/services/card_service.dart';
import 'package:myapp/utils.dart';
import '../../../services/ability_service.dart';
import '../../../widgets/CollectionCardWidget.dart';

import '../../../models/user.dart';
import '../../../models/gamecard.dart';
import '../../../services/helper_service.dart';
import '../../../services/user_service.dart';

class TradeSelectCard extends StatefulWidget {
  static const String routeName = "/TradeSelectCard";

  @override
  State<TradeSelectCard> createState() => _TradeSelectCardState();
}

class _TradeSelectCardState extends State<TradeSelectCard> {
  String? deviceId;
  List<Gamecard>? cards;
  List<Ability> abilities = [];
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
        getAbilities();
      });
    }
  }

  getAbilities() async {
    for (var card in cards!) {
      Ability? ability = await AbilityService().getAbilityById(card.abilityId);
      if (ability != null) {
        abilities.add(ability);
      }
    }
    if (abilities.length == cards!.length) {
      setState(() {
        abilitiesLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // tradingwindowPty (26:586)
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Color(0xff202024),
      ),
      child: Visibility(
        visible: abilitiesLoaded && cardsLoaded,
        replacement: const Center(
            child: CircularProgressIndicator(
          color: Colors.deepPurpleAccent,
        )),
        child: GridView.builder(
            itemCount: cards?.length ?? 0,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (_, int index) {
              return GridTile(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, TradeConfirmCard.routeName, arguments: ScreenArguments(deviceId!, cards![index], abilities[index]));
                      },
                    child: CollectionCardWidget(
                      fem: fem,
                      ffem: ffem,
                      name: cards?[index].name ?? "...",
                      description: cards?[index].description ?? "...",
                      energy: cards?[index].energy ?? 0,
                      strength: cards?[index].strength ?? 0,
                      health: cards?[index].health ?? 0,
                      ability: abilities[index].name,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
