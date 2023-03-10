import 'package:flutter/material.dart';
import 'package:myapp/models/basic_argument.dart';
import 'package:myapp/models/screen_argument.dart';
import 'package:myapp/models/ability.dart';
import 'package:myapp/models/Gamecard.dart';
import 'package:myapp/services/ability_service.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/big_card_edit.dart';
import '../../../services/helper_service.dart';
import '../preview/preview.dart';

// create window to edit strength, health and ability
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
    name: "",
    cardIds: [],
  );

  List<Ability>? abilities = [];

  String? deviceId;
  var deviceIdLoaded = false;
  var abLoaded = false;


  String availablePoints = "";

  // get device id = user
  getDeviceId() async {
    deviceId = await HelperService().getUserId();
    if (deviceId != null) {
      setState(() {
        deviceIdLoaded = true;
      });
    }
  }

  //get list of all abilities in database
  getAllAbilities() async {
    abilities = await AbilityService().getAbilities();
    if (abilities!.length > 1) {
      setState(() {
        abLoaded = true;
        updateAbility(widget.spell);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    abilities?.add(ability);
    strength = widget.power;
    health = widget.hp;
    getDeviceId();
    getAllAbilities();
  }

  // updates the shown ability
  void updateAbility(String name) {
    setState(() {
      ability = abilities!.firstWhere((element) => element.name == name);
    });
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as BasicArgument;
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
              // Card, only visible when the user is loaded
              Expanded(
                flex: 32,
                child: Visibility(
                  visible: abLoaded & deviceIdLoaded,
                  replacement: const Center(
                      child: CircularProgressIndicator(
                    color: Colors.deepPurpleAccent,
                  )),
                  child: BigCardEdit(
                    fem: fem,
                    ffem: ffem,
                    args: ScreenArgument(
                      deviceId!,
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
              Expanded(
                flex: 2,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
