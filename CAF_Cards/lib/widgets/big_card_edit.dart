import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/models/ability.dart';
import '../models/screen_argument.dart';
import '../utils.dart';

class BigCardEdit extends StatefulWidget {
  const BigCardEdit({
    Key? key,
    required this.fem,
    required this.ffem,
    required this.args,
    required this.getAbility,
    required this.abilities,
  }) : super(key: key);

  final double fem;
  final double ffem;
  final ScreenArgument args;
  final List<Ability>? abilities;
  final Function(String name) getAbility;

  @override
  State<BigCardEdit> createState() => _BigCardEditState();
}

class _BigCardEditState extends State<BigCardEdit> {
  String value = "test";
  List<Ability>? entries = [];
  List<Ability>? availableAbilities = [];
  int strength = 0;
  int health = 1;
  String? deviceId;
  int availablePoints = 0;
  Map<int, int> maxPoints = {0: 2, 1: 5, 2: 8, 3: 11, 4: 14, 5: 17};

  @override
  void initState() {
    super.initState();
    strength = widget.args.card.strength;
    health = widget.args.card.health;
    deviceId = widget.args.deviceId;
    entries = widget.abilities;
    availablePoints = maxPoints[widget.args.card.energy]!;
    availableAbilities = List.of(entries!.where((element) => element.cost <= availablePoints));
  }

  void updatePoints(int cost){
    availablePoints -= cost;
  }

  void updateAbilityList(){
    availableAbilities = List.of(entries!.where((element) => element.cost <= availablePoints));
  }

  void decrementStrength() {
    if (strength > 0) {
      setState(() {
        strength--;
      });
      availablePoints += 1;
      updateAbilityList();
    }
  }

  void incrementStrength() {
    if (strength < 9) {
      if (availablePoints > 0) {
        setState(() {
          strength++;
        });
        availablePoints -= 1;
        updateAbilityList();
      }
    }
  }

  void decrementHealth() {
    if (health > 1) {
      setState(() {
        health--;
      });
      availablePoints += 1;
      updateAbilityList();
    }
  }

  void incrementHealth() {
    if (health < 9) {
      if (availablePoints > 0) {
        setState(() {
          health++;
        });
        availablePoints -= 1;
        updateAbilityList();
      }
    }
  }

  final textfontsize = 20;
  final numberfontsize = 30;
  final descfontsize = 15;

  @override
  Widget build(BuildContext context) {
    final fem = widget.fem;
    final ffem = widget.ffem;
    final args = widget.args;

    return Container(
      width: 340 * fem,
      height: 670 * fem,
      child: Column(
        children: [
          Container(
              width: 340 * fem,
              height: 94 * fem,
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
                      "$availablePoints / ${maxPoints[args.card.energy]}",
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'SF Pro Display',
                        fontSize: 36 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 0.6111111111 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              )),
          Container(
            width: 340 * fem,
            height: 576 * fem,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(29 * fem),
              color: const Color(0xff47479d),
            ),
            child: Column(
              children: [
                // Top row (Name & Energy)
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      // Name
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              20 * fem, 2 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            args.card.name,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: textfontsize * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.4666666667 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                      // Energy
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 2 * fem, 20 * fem, 0 * fem),
                          child: Row(
                            children: [
                              // Energy Value
                              Expanded(
                                flex: 2,
                                child: Text(
                                  args.card.energy.toString(),
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'SF Pro Display',
                                    fontSize: numberfontsize * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              // Energy Symbol
                              Expanded(
                                flex: 3,
                                child: Image.asset(
                                  'assets/images/lightning.png',
                                  //width: double.infinity,
                                  //height: double.infinity,
                                  width: 66.86 * fem,
                                  height: 66.86 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Image
                Expanded(
                  flex: 7,
                  child: Container(
                    child: Image.asset(
                      'assets/images/placeholder_small.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Description
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        20 * fem, 20 * fem, 20 * fem, 20 * fem),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        args.card.description,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: descfontsize * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.1 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),

                // Corners + Ability
                Expanded(
                  flex: 5,
                  child: Container(
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Top corners
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // top left corner
                                Expanded(
                                  flex: 2,
                                  child: Image.asset(
                                    'assets/images/top_left_corner.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                                // Empty space
                                Expanded(
                                  flex: 5,
                                  child: Container(),
                                ),
                                // top right corner
                                Expanded(
                                  flex: 2,
                                  child: Image.asset(
                                    'assets/images/top_right_corner.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Ability Text
                          Expanded(
                            flex: 7,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  30 * fem, 0 * fem, 30 * fem, 0 * fem),
                              child: InkWell(
                                onTap: () {
                                  showGeneralDialog(
                                    context: context,
                                    transitionDuration:
                                        const Duration(milliseconds: 400),
                                    pageBuilder: (context, ania, anis) {
                                      return SizedBox.expand(
                                        child: Container(
                                          color: const Color(0xff202024),
                                          child: Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex: 10,
                                                  child: ListView.separated(
                                                    padding:
                                                        const EdgeInsets.all(8),
                                                    itemCount: availableAbilities!.length,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                            int index) {
                                                      return SizedBox(
                                                          height: 100,
                                                          child: ElevatedButton(
                                                              onPressed: () {
                                                                widget.getAbility(
                                                                    availableAbilities![
                                                                            index]
                                                                        .name);
                                                                updatePoints(availableAbilities![index].cost);
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              style: ElevatedButton.styleFrom(
                                                                elevation: 0.0,
                                                                backgroundColor: Colors.deepPurple.withOpacity(0.5),
                                                                shape: const RoundedRectangleBorder(
                                                                    borderRadius: BorderRadius.all(Radius.circular(1))
                                                                ),
                                                              ),
                                                              child: Text(
                                                                  availableAbilities![
                                                                          index]
                                                                      .name),
                                                          ),
                                                      );
                                                    },
                                                    separatorBuilder:
                                                        (BuildContext context,
                                                                int index) =>
                                                            const Divider(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Center(
                                  child: Text(
                                    args.ability.name,
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'SF Pro Display',
                                      fontSize: textfontsize * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1 * ffem / fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // Bottom corners
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Bottom left corner
                                Expanded(
                                  flex: 2,
                                  child: Image.asset(
                                    'assets/images/bottom_left_corner.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(),
                                ),
                                // Bottom right corner
                                Expanded(
                                  flex: 2,
                                  child: Image.asset(
                                    'assets/images/bottom_right_corner.png',
                                    width: 33 * fem,
                                    height: 33 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Strength & Health row
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        16 * fem, 0 * fem, 16 * fem, 2 * fem),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {
                              incrementStrength();
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        // Strength value
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              strength.toString(),
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'SF Pro Display',
                                fontSize: numberfontsize * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.1 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        // Strength Icon
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'assets/images/sword.png',
                            //width: 14.35 * fem,
                            //height: 18.83 * fem,
                            width: 32.83 * fem,
                            height: 46.36 * fem,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {
                              decrementStrength();
                            },
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        // Free Space
                        Expanded(
                          flex: 2, // 3
                          child: Container(),
                        ),

                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {
                              incrementHealth();
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        // Health Value
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              health.toString(),
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'SF Pro Display',
                                fontSize: numberfontsize * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.1 * ffem / fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        // Health Icon
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'assets/images/health.png',
                            //width: double.infinity,
                            //height: double.infinity,
                            width: 50 * fem,
                            height: 50 * fem,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {
                              decrementHealth();
                            },
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
