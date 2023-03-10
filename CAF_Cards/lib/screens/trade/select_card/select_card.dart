import 'package:flutter/material.dart';
import 'package:myapp/models/ability.dart';
import 'package:myapp/screens/trade/confirm_card/confirm_card.dart';
import 'package:myapp/services/card_service.dart';
import 'package:myapp/services/trade_service.dart';
import '../../../models/trade.dart';
import '../../../services/ability_service.dart';
import '../../../widgets/small_card.dart';
import '../../../models/Gamecard.dart';
import '../../../services/helper_service.dart';
import '../../home/home.dart';

// class head of the Select card page
class TradeSelectCard extends StatefulWidget {
  const TradeSelectCard({super.key});

  static const String routeName = "/TradeSelectCard";

  @override
  State<TradeSelectCard> createState() => _TradeSelectCardState();
}

class _TradeSelectCardState extends State<TradeSelectCard> {
  String? deviceId;
  List<Gamecard>? cards;
  List<Ability> abilities = [];
  Trade? trade;

  var deviceIdLoaded = false;
  var cardsLoaded = false;
  var abilitiesLoaded = false;
  bool tradeLoaded = false;

  // when starting the page this function is called
  @override
  void initState() {
    super.initState();

    getDeviceId();
  }

  // function to get the current device ID
  getDeviceId() async {
    deviceId = await HelperService().getUserId();
    if (deviceId != null) {
      setState(() {
        deviceIdLoaded = true;
        getCardsByUser(deviceId);
      });
    }
  }

  // function to get all cards from the current user
  getCardsByUser(deviceId) async {
    cards = await GamecardService().getGamecardsByUser(deviceId);
    if (cards != null) {
      setState(() {
        cardsLoaded = true;
        getAbilities();
      });
    }
  }

  // function to get all ability's for the cards from the backend
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

  // function to safely close the trade
  closeTrade(context) async{
    await TradeService().updateDeleted(deviceId!, true);

    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const Home(),
    ));
    Navigator.pop(context);
  }

  // function to safely delete the trade
  deleteTrade() async {
    await TradeService().deleteTradeByDeviceId(deviceId!);
  }

  // function to get the current trade
  getTrade(deviceId) async {
    trade = await TradeService().getTradeByDeviceId(deviceId);
    if (trade != null) {
      setState(() {
        tradeLoaded = true;
      });
    }
  }

  // main widget for this page
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
              // display all the users cards in a gridview
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
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
