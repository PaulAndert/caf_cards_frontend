import 'package:flutter/material.dart';
import 'package:myapp/services/ability_service.dart';
import 'package:myapp/widgets/small_card.dart';
import '../../models/ability.dart';
import '../../models/Gamecard.dart';
import '../../services/card_service.dart';
import '../../services/helper_service.dart';
import '../details/details.dart';

var fem;
var ffem;

class Collection extends StatelessWidget {
  static const String routeName = "/Collection";
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    fem = MediaQuery.of(context).size.width / baseWidth;
    ffem = fem * 0.97;
    return const GridBuilder();
  }
}

class GridBuilder extends StatefulWidget {
  const GridBuilder({super.key});

  @override
  GridBuilderState createState() => GridBuilderState();
}

class GridBuilderState extends State<GridBuilder> {
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

  // get device id = user
  getDeviceId() async {
    deviceId = await HelperService().getUserId();
    if (deviceId != null) {
      setState(
        () {
          deviceIdLoaded = true;
          getCardsByUser(deviceId);
        },
      );
    }
  }

  // create list of cards of user
  getCardsByUser(deviceId) async {
    cards = await GamecardService().getGamecardsByUser(deviceId);
    if (cards != null) {
      setState(
        () {
          cardsLoaded = true;
          getAbilities();
        },
      );
    }
  }

  // gets the ability for each card
  getAbilities() async {
    for (var card in cards!) {
      Ability? ability = await AbilityService().getAbilityById(card.abilityId);
      if (ability != null) {
        abilities.add(ability);
      }
    }
    if (abilities.length == cards!.length) {
      setState(
        () {
          abilitiesLoaded = true;
        },
      );
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
        child: Visibility(
          visible: abilitiesLoaded && cardsLoaded,
          replacement: const Center(
            child: CircularProgressIndicator(
              color: Colors.deepPurpleAccent,
            ),
          ),
          child: Center(
            // shows cards in a grid view
            child: GridView.builder(
              itemCount: cards?.length ?? 0,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (157.75 * fem / 250 * fem),
              ),
              itemBuilder: (_, int index) {
                return GridTile(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    alignment: Alignment.center,
                    child: CollectionCardWidget(
                      fem: fem,
                      ffem: ffem,
                      card: cards![index],
                      ability: abilities[index],
                      routeName: Details.routeName,
                      deviceId: deviceId!,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
