import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/ScreenArguments.dart';
import 'package:myapp/models/ability.dart';
import 'package:myapp/screens/trade/confirm_card/trading-window-ifX.dart';
import 'package:myapp/services/card_service.dart';
import 'package:myapp/services/trade_service.dart';
import 'package:myapp/utils.dart';
import '../../../services/ability_service.dart';
import '../../../widgets/CollectionCardWidget.dart';

import '../../../models/user.dart';
import '../../../models/gamecard.dart';
import '../../../services/helper_service.dart';
import '../../../services/user_service.dart';
import '../../../widgets/card_fullscreen_widget.dart';
import '../../home/home.dart';
import '../start/trade-start.dart';

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

  deleteTrade() async {
    await TradeService().deleteTradeByDeviceId(deviceId!);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xff202024),
        ),
        child: Visibility(
          visible: abilitiesLoaded && cardsLoaded && deviceIdLoaded,
          replacement: const Center(
              child: CircularProgressIndicator(
            color: Colors.deepPurpleAccent,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Row(children: [
                  Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(
                            context,
                            TradeStart.routeName, // navbar does not change and other one does not notice that trade stopped
                          );
                          deleteTrade();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Color(0xffffffff),
                        )),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(),
                  )
                ]),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 35,
                child: GridView.builder(
                    itemCount: cards?.length ?? 0,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (157.75 * fem / 250 * fem),
                    ),
                    itemBuilder: (_, int index) {
                      return GridTile(
                        child: Container(
                          alignment: Alignment.topCenter,
                          child: CollectionCardWidget(
                            fem: fem,
                            ffem: ffem,
                            card: cards![index],
                            ability: abilities[index],
                            routeName: TradeConfirmCard.routeName,
                            deviceId: deviceId!,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
