import 'package:flutter/material.dart';
import 'package:myapp/models/ability.dart';
import 'package:myapp/screens/home/home.dart';
import 'package:myapp/services/ability_service.dart';
import 'package:myapp/services/card_service.dart';
import 'package:myapp/services/user_service.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/small_card.dart';
import '../../../models/Gamecard.dart';
import '../../../models/trade.dart';
import '../../../services/helper_service.dart';
import '../../../services/trade_service.dart';

// class head of the Confirm Trade page
class TradingConfirmTrade extends StatefulWidget {
  const TradingConfirmTrade({super.key});

  static const String routeName = "/TradingConfirmTrade";

  @override
  State<TradingConfirmTrade> createState() => _TradingConfirmTradeState();
}

class _TradingConfirmTradeState extends State<TradingConfirmTrade> {
  String? deviceId;
  Trade? trade;

  // variables for the two cards for the trade
  Gamecard? ownCard;
  Gamecard? friendsCard;

  // variables for the two ability's for the trade
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
      });
    }
    while (true) {
      await getTrade(deviceId);
      await Future.delayed(const Duration(milliseconds: 3000));
    }
  }

  // function to safely finish the trade so that both users get there cards traded and moved to the home page
  finishTrade(context) async {
    while (waiting == true) {
      await getTrade(deviceId);
      if (trade!.receiverAccepted && trade!.senderAccepted) {
        if (trade!.canBeDeleted) {
          await UserService().tradeCards(deviceId!);
          await deleteTrade();
        }
        await TradeService().updateDeleted(deviceId!, true);
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Home(),
        ));
      }
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  // function to get the current trade
  getTrade(deviceId) async {
    trade = await TradeService().getTradeByDeviceId(deviceId);
    if (trade != null) {
      setState(() {
        tradeLoaded = true;
        getCards();
      });
    }
  }

  // function to get the current cards into the variables and change the state
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

  // function to get all ability's for the cards from the backend
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

  // function to accept the trade
  accept(context) async {
    waiting = true;
    await TradeService().updateAccept(deviceId!, true);
    await finishTrade(context);
  }

  // function to decline the trade
  decline() async {
    waiting = false;
    await TradeService().updateAccept(deviceId!, false);
  }

  // function to safely delete the trade
  deleteTrade() async {
    await TradeService().deleteTradeByDeviceId(deviceId!);
  }

  // main widget for this page
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: Container(
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
              // Button row on the top
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    IconButton(
                      onPressed: () {
                        deleteTrade();
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Home(),
                        ));
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
              ),
              // Spacing
              Expanded(
                flex: 2,
                child: Container(),
              ),
              // display both text boxes
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "Your Card",
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2575 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 10 * fem, 0 * fem),
                        child: Center(
                          child: Text(
                            "Friends Card",
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // display both cards
              Expanded(
                flex: 10,
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 267 * fem,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Visibility(
                                visible: ownCardLoaded && ownAbilityLoaded,
                                replacement: const Center(
                                    child: CircularProgressIndicator(
                                  color: Colors.deepPurpleAccent,
                                )),
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        15 * fem, 0 * fem, 10 * fem, 0 * fem),
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
                            ),
                            Expanded(
                              flex: 5,
                              child: Visibility(
                                visible:
                                    friendsCardLoaded && friendsAbilityLoaded,
                                replacement: const Center(
                                    child: CircularProgressIndicator(
                                  color: Colors.deepPurpleAccent,
                                )),
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        10 * fem, 0 * fem, 15 * fem, 0 * fem),
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
