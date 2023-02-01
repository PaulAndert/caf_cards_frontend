import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/basic_argument.dart';
import 'package:myapp/models/screen_argument.dart';
import 'package:myapp/models/ability.dart';
import 'package:myapp/models/card.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/big_card.dart';
import 'package:myapp/widgets/big_card_edit.dart';

import '../../../services/helper_service.dart';

class CreatePoints extends StatefulWidget {
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
  String ability = "does nothing special";

  String? deviceId;
  var deviceIdLoaded = false;

  getDeviceId() async {
    deviceId = await HelperService().getUserId();
    if (deviceId != null) {
      setState(() {
        deviceIdLoaded = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    strength = widget.power;
    health = widget.hp;
    ability = widget.spell;
    getDeviceId();
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

  void updateAbility(String name){
    setState(() {
      ability = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as CreateBasicArguments;
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Material(
      child: Container(
        width: double.infinity,
        child: Container(
          // createpointsLzH (10:10943)
          padding: EdgeInsets.fromLTRB(9*fem, 42*fem, 9*fem, 0*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xff202024),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupb8mkmZo (T1SyrCYQwsjtUSuH9wb8MK)
                margin: EdgeInsets.fromLTRB(21*fem, 0*fem, 50.5*fem, 21*fem),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      // iconographycaesarzkne7o (26:995)
                      flex: 1,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios, color: Colors.white,)
                      ),
                    ),
                     Expanded(
                        flex: 1,
                        child: Text(
                          '7/10',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'SF Pro Display',
                            fontSize: 36*ffem,
                            fontWeight: FontWeight.w700,
                            height: 0.6111111111*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Expanded(
                flex: 23,
                child: fullscreen_edit_widget(
                  fem: fem, ffem: ffem, args: ScreenArguments("0",
                    Gamecard(
                    id: 0,
                    name: args.name,
                    description: args.description,
                    energy: args.energy,
                    strength: strength,
                    health: health,
                    userIds: [],
                    abilityId: 11),
                    Ability(
                      id: 11,
                      cost: 0,
                      name: ability,
                      cardIds: [],
                    )
                ), getAbility: (String name) {
                    print(name);
                  updateAbility(name);
                },

                ),
              ),
              Expanded(
                // buttonsprimery4LV (111:1638)
                flex: 4,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {  },
                    child: Text(
                      'Confirm',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'SF Pro Display',
                        fontSize: 17*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2941176471*ffem/fem,
                        color: Color(0xffffffff),
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
