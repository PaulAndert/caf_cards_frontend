import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/CreateBasicArguments.dart';
import 'package:myapp/models/ScreenArguments.dart';
import 'package:myapp/models/ability.dart';
import 'package:myapp/models/gamecard.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/card_fullscreen_widget.dart';
import 'package:myapp/widgets/navbar.dart';

import '../../../services/helper_service.dart';

class CreatePoints extends StatefulWidget {
  static const String routeName = "/CreatePoints";
  final int power = 0;
  final int hp = 1;

  @override
  State<CreatePoints> createState() => _CreatePointsState();
}

class _CreatePointsState extends State<CreatePoints> {
  int strength = 0;
  int health = 1;

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
    if (strength < 10) {
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
    if (health < 11) {
      setState(() {
        health++;
      });
    }
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
                child: card_fullscreen_widget(
                  fem: fem, ffem: ffem, args: ScreenArguments(deviceId!,
                    Gamecard(
                    id: 0,
                    name: args.name,
                    description: args.description,
                    energy: args.energy,
                    strength: strength,
                    health: health,
                    userIds: [],
                    abilityId: 0),
                    Ability(
                      id: 0,
                      cost: 0,
                      name: "does nothing special",
                      cardIds: [],
                    )),
                ),
              ),
              Expanded(
                flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: IconButton(onPressed: (){
                          incrementStrength();
                        },
                          icon: const Icon(Icons.plus_one, color: Colors.white,),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: (){
                          decrementStrength();
                        },
                          icon: const Icon(Icons.exposure_minus_1, color: Colors.white,),
                        ),
                      ),
                      Expanded(
                          flex: 4,
                          child: Container()
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(onPressed: (){
                          incrementHealth();
                        },
                          icon: const Icon(Icons.plus_one, color: Colors.white,),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(
                          onPressed: (){
                            decrementHealth();
                          },
                          icon: const Icon(Icons.exposure_minus_1, color: Colors.white,),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                // buttonsprimery4LV (111:1638)
                flex: 3,
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
