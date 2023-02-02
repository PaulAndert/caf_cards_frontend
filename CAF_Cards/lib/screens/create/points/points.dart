import 'package:flutter/material.dart';
import 'package:myapp/models/basic_argument.dart';
import 'package:myapp/models/screen_argument.dart';
import 'package:myapp/models/ability.dart';
import 'package:myapp/models/Gamecard.dart';
import 'package:myapp/services/ability_service.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/big_card_edit.dart';
import '../../../services/helper_service.dart';

class CreatePoints extends StatefulWidget {
  const CreatePoints({super.key});

  static const String routeName = "/CreatePoints";
  final int power = 0;
  final int hp = 1;
  final String spell = "does nothing special";

  @override
  State<CreatePoints> createState() => _CreatePointsState();
}

class _CreatePointsState extends State<CreatePoints> {
  int strength = 0;
  int health = 1;
  Ability ability = Ability(
    id: 1,
    cost: 0,
    name: "press here to choose Ability",
    cardIds: [],
  );

  List<Ability>? abilities = [];

  String? deviceId;
  var deviceIdLoaded = false;
  var abLoaded = false;

  Map maxPoints = {
    "0": "2",
    "1": "5",
    "2": "8",
    "3": "11",
    "4": "14",
    "5": "17",
  };

  String availablePoints = "";

  getDeviceId() async {
    deviceId = await HelperService().getUserId();
    if (deviceId != null) {
      setState(() {
        deviceIdLoaded = true;
      });
    }
  }

  getAllAbilities() async {
    abilities = await AbilityService().getAbilities();
    if (abilities!.length > 1) {
      setState(() {
        abLoaded = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    abilities?.add(ability);
    strength = widget.power;
    health = widget.hp;
    ability.name = widget.spell;
    getDeviceId();
    getAllAbilities();
  }

  void decrementStrength() {
    if (strength > 0) {
      setState(() {
        strength--;
      });
    }
  }

  void incrementStrength() {
    if (strength < 9) {
      setState(() {
        strength++;
      });
    }
  }

  void decrementHealth() {
    if (health > 1) {
      setState(() {
        health--;
      });
    }
  }

  void incrementHealth() {
    if (health < 9) {
      setState(() {
        health++;
      });
    }
  }

  void updateAbility(String name) {
    setState(() {
      ability.name = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as BasicArgument;
    availablePoints = maxPoints[args.energy.toString()];
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: Container(
        width: double.infinity,
        child: Container(
          padding: EdgeInsets.fromLTRB(9 * fem, 42 * fem, 9 * fem, 0 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff202024),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              /*Expanded(
                flex: 2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Button back
                    Expanded(
                      flex: 1,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                    ),
                    // Points
                    Expanded(
                      flex: 1,
                      child: Text(
                        "$availablePoints / ${maxPoints[args.energy.toString()]}",
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: 36 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 0.6111111111 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),*/
              // Card
              Expanded(
                flex: 25,
                child: Visibility(
                  visible: abLoaded,
                  replacement: const Center(
                      child: CircularProgressIndicator(
                    color: Colors.deepPurpleAccent,
                  )),
                  child: BigCardEdit(
                    fem: fem,
                    ffem: ffem,
                    args: ScreenArgument(
                      "0",
                      Gamecard(
                          id: 0,
                          name: args.name,
                          description: args.description,
                          energy: args.energy,
                          strength: strength,
                          health: health,
                          userIds: [],
                          abilityId: 11),
                      ability,
                    ),
                    getAbility: (String name) {
                      updateAbility(name);
                    },
                    abilities: abilities,
                  ),
                ),
              ),
              // Confirm Button
              Expanded(
                flex: 4,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Confirm',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'SF Pro Display',
                        fontSize: 17 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2941176471 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
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
