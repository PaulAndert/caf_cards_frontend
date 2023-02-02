import 'package:flutter/material.dart';
import 'package:myapp/models/ability.dart';
import 'package:myapp/screens/collection/collection.dart';
import 'package:myapp/screens/home/home.dart';
import 'package:myapp/services/ability_service.dart';
import 'package:myapp/services/card_service.dart';
import 'package:myapp/services/user_service.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/small_card.dart';
import '../../../main.dart';
import '../../../models/Gamecard.dart';
import '../../../models/trade.dart';
import '../../../services/helper_service.dart';
import '../../../services/trade_service.dart';

class TradingConfirmTrade extends StatefulWidget {
  const TradingConfirmTrade({super.key});

  static const String routeName = "/TradingConfirmTrade";

  @override
  State<TradingConfirmTrade> createState() => _TradingConfirmTradeState();
}

class _TradingConfirmTradeState extends State<TradingConfirmTrade> {
  String? deviceId;
  Trade? trade;
  Gamecard? ownCard;
  Gamecard? friendsCard;
  Ability? ownAbility;
  Ability? friendsAbility;

  bool deviceIdLoaded = false;
  bool tradeLoaded = false;
  bool ownCardLoaded = false;
  bool friendsCardLoaded = false;
  bool ownAbilityLoaded = false;
  bool friendsAbilityLoaded = false;
  bool waiting = false;

  Gamecard emptyCard = Gamecard(
      id: 0,
      name: "...",
      description: "...",
      energy: 0,
      strength: 0,
      health: 0,
      userIds: [],
      abilityId: 0);

  Ability emptyAbility = Ability(id: 0, name: "...", cost: 0, cardIds: []);

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
      });
    }
    while (true) {
      await getTrade(deviceId);
      await Future.delayed(const Duration(milliseconds: 5000));
    }
  }

  finishTrade(context) async {
    while (waiting == true) {
      await getTrade(deviceId);
      if (trade!.receiverAccepted && trade!.senderAccepted) {
        if (trade!.canBeDeleted) {
          await UserService().tradeCards(deviceId!);
          await deleteTrade();
        }
        await TradeService().updateDeleted(deviceId!, true);
        selectedIndex = 4;
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Collection(),
        ));
      }
      if (trade!.canBeDeleted &&
          !(trade!.receiverAccepted && trade!.senderAccepted)) {
        await deleteTrade();
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Home(),
        ));
      }
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  getTrade(deviceId) async {
    trade = await TradeService().getTradeByDeviceId(deviceId);
    if (trade != null) {
      setState(() {
        tradeLoaded = true;
        getCards();
      });
    }
  }

  getCards() async {
    if (deviceId == trade!.senderDeviceId) {
      ownCard = await GamecardService().getGamecardById(trade!.senderCardId);
      friendsCard =
          await GamecardService().getGamecardById(trade!.receiverCardId);
    } else {
      ownCard = await GamecardService().getGamecardById(trade!.receiverCardId);
      friendsCard =
          await GamecardService().getGamecardById(trade!.senderCardId);
    }
    if (ownCard != null) {
      setState(() {
        ownCardLoaded = true;
        getAbilities();
      });
    }
    if (friendsCard != null) {
      setState(() {
        friendsCardLoaded = true;
        getAbilities();
      });
    }
  }

  getAbilities() async {
    ownAbility = await AbilityService().getAbilityById(ownCard!.abilityId);
    friendsAbility =
        await AbilityService().getAbilityById(friendsCard!.abilityId);
    if (ownAbility != null) {
      setState(() {
        ownAbilityLoaded = true;
      });
    }
    if (friendsAbility != null) {
      setState(() {
        friendsAbilityLoaded = true;
      });
    }
  }

  accept(context) async {
    waiting = true;
    await TradeService().updateAccept(deviceId!, true);
    await finishTrade(context);
  }

  decline() async {
    waiting = false;
    await TradeService().updateAccept(deviceId!, false);
  }

  deleteTrade() async {
    await TradeService().deleteTradeByDeviceId(deviceId!);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(0 * fem, 61 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    decline();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xffffffff),
                  ),
                ),
                Visibility(
                  visible: waiting,
                  replacement: IconButton(
                    onPressed: () {
                      accept(context);
                    },
                    icon: const Icon(
                      Icons.check,
                      color: Color(0xffffffff),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      decline();
                    },
                    icon: const Icon(
                      Icons.stop,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                  11.99 * fem, 132 * fem, 10 * fem, 24 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 201 * fem),
                    width: double.infinity,
                    height: 267 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Visibility(
                          visible: ownCardLoaded && ownAbilityLoaded,
                          replacement: const Center(
                              child: CircularProgressIndicator(
                            color: Colors.deepPurpleAccent,
                          )),
                          child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 14.99 * fem, 0 * fem),
                              width: 178.01 * fem,
                              height: double.infinity,
                              child: CollectionCardWidget(
                                fem: fem,
                                ffem: ffem,
                                card: ownCard ?? emptyCard,
                                ability: ownAbility ?? emptyAbility,
                                deviceId: '',
                                routeName: '',
                              )),
                        ),
                        Visibility(
                          visible: friendsCardLoaded && friendsAbilityLoaded,
                          replacement: const Center(
                              child: CircularProgressIndicator(
                                color: Colors.deepPurpleAccent,
                              )),
                          child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 14.99 * fem, 0 * fem),
                              width: 178.01 * fem,
                              height: double.infinity,
                              child: CollectionCardWidget(
                                fem: fem,
                                ffem: ffem,
                                card: friendsCard ?? emptyCard,
                                ability: friendsAbility ?? emptyAbility,
                                deviceId: '',
                                routeName: '',
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
