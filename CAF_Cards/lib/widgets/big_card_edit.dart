import 'package:flutter/material.dart';
import '../models/screen_argument.dart';
import '../utils.dart';

class BigCardEdit extends StatefulWidget {
  const BigCardEdit({
    Key? key,
    required this.fem,
    required this.ffem,
    required this.args,
    required this.getAbility,
  }) : super(key: key);

  final double fem;
  final double ffem;
  final ScreenArgument args;

  final Function(String name) getAbility;

  @override
  State<BigCardEdit> createState() => _BigCardEditState();
}

class _BigCardEditState extends State<BigCardEdit> {
  String value = "test";
  int strength = 0;
  int health = 1;

  String? deviceId;

  @override
  void initState() {
    super.initState();
    strength = widget.args.card.strength;
    health = widget.args.card.health;
    deviceId = widget.args.deviceId;
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
        print(strength);
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

  @override
  Widget build(BuildContext context) {
    return Container(
      // group6GJH (103:1291)
      margin: EdgeInsets.fromLTRB(
          10 * widget.fem, 0 * widget.fem, 10 * widget.fem, 0 * widget.fem),
      width: double.infinity,
      height: 576 * widget.fem,
      child: Stack(
        children: [
          Positioned(
            // rectangle38XV7 (103:1277)
            left: 0 * widget.fem,
            top: 0 * widget.fem,
            child: Align(
              child: SizedBox(
                width: 357 * widget.fem,
                height: 576 * widget.fem,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29 * widget.fem),
                    color: const Color(0xff47479d),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // vector8strokeBpZ (103:1278)
            left: 23 * widget.fem,
            top: 378.0001220703 * widget.fem,
            child: Align(
              child: SizedBox(
                width: 33 * widget.fem,
                height: 33 * widget.fem,
                child: Image.asset(
                  'assets/images/top_left_corner.png',
                  width: 33 * widget.fem,
                  height: 33 * widget.fem,
                ),
              ),
            ),
          ),
          Positioned(
            // vector8strokeEnq (103:1279)
            left: 299.0002441406 * widget.fem,
            top: 378.0001220703 * widget.fem,
            child: Align(
              child: SizedBox(
                width: 33 * widget.fem,
                height: 33 * widget.fem,
                child: Image.asset(
                  'assets/images/top_right_corner.png',
                  width: 33 * widget.fem,
                  height: 33 * widget.fem,
                ),
              ),
            ),
          ),
          Positioned(
            // vector8strokehgR (103:1280)
            left: 23 * widget.fem,
            top: 470.0001220703 * widget.fem,
            child: Align(
              child: SizedBox(
                width: 33 * widget.fem,
                height: 33 * widget.fem,
                child: Image.asset(
                  'assets/images/bottom_left_corner.png',
                  width: 33 * widget.fem,
                  height: 33 * widget.fem,
                ),
              ),
            ),
          ),
          Positioned(
            // vector8strokex6Z (103:1281)
            left: 299.0002441406 * widget.fem,
            top: 470.0001220703 * widget.fem,
            child: Align(
              child: SizedBox(
                width: 33 * widget.fem,
                height: 33 * widget.fem,
                child: Image.asset(
                  'assets/images/bottom_right_corner.png',
                  width: 33 * widget.fem,
                  height: 33 * widget.fem,
                ),
              ),
            ),
          ),
          Positioned(
            // DHP (103:1296)
            left: 271 * widget.fem,
            top: 535.4998779297 * widget.fem,
            child: Center(
              child: Align(
                child: SizedBox(
                  width: 26 * widget.fem,
                  height: 22 * widget.fem,
                  child: Text(
                    health.toString(),
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'SF Pro Display',
                      fontSize: 48 * widget.ffem,
                      fontWeight: FontWeight.w700,
                      height: 0.4583333333 * widget.ffem / widget.fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // group9dru (106:3864)
            left: 293 * widget.fem,
            top: 2.9999389648 * widget.fem,
            child: Align(
              child: SizedBox(
                width: 66.86 * widget.fem,
                height: 66.86 * widget.fem,
                child: Image.asset(
                  'assets/images/lightning.png',
                  width: 66.86 * widget.fem,
                  height: 66.86 * widget.fem,
                ),
              ),
            ),
          ),
          Positioned(
            // UMj (103:1297)
            left: 285 * widget.fem,
            top: 22.4999389648 * widget.fem,
            child: Center(
              child: Align(
                child: SizedBox(
                  width: 26 * widget.fem,
                  height: 22 * widget.fem,
                  child: Text(
                    widget.args.card.energy.toString(),
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'SF Pro Display',
                      fontSize: 48 * widget.ffem,
                      fontWeight: FontWeight.w700,
                      height: 0.4583333333 * widget.ffem / widget.fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // draw2cardswhenplayedhEV (103:1287)
            left: 61.5 * widget.fem,
            top: 429.5001220703 * widget.fem,
            child: Center(
              child: Align(
                child: SizedBox(
                  width: 230 * widget.fem,
                  height: 22 * widget.fem,
                  child: /* Text(
                    args.ability.name,
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'SF Pro Display',
                      fontSize: 20*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.1*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                  */
                      ElevatedButton(
                    child: Text(
                      widget.args.ability.name,
                    ),
                    onPressed: () {
                      showGeneralDialog(
                        context: context,
                        transitionDuration: Duration(milliseconds: 400),
                        pageBuilder: (context, ania, anis) {
                          return SizedBox.expand(
                            child: Container(
                              color: Colors.black,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const FlutterLogo(
                                      size: 200,
                                    ),
                                    const Text(
                                      "This is a Full Screen Dialog",
                                      style: TextStyle(
                                          fontSize: 20,
                                          decoration: TextDecoration.none),
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          widget.getAbility(value);
                                          Navigator.pop(context);
                                        },
                                        child: Text(value))
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // topfdergieruLZ (103:1292)
            left: 28 * widget.fem,
            top: 22.4998779297 * widget.fem,
            child: Align(
              child: SizedBox(
                width: 172 * widget.fem,
                height: 22 * widget.fem,
                child: Text(
                  //'Jar of Greed',
                  widget.args != null ? widget.args.card.name : "...",
                  style: SafeGoogleFont(
                    'SF Pro Display',
                    fontSize: 32 * widget.ffem,
                    fontWeight: FontWeight.w700,
                    height: 0.6875 * widget.ffem / widget.fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // anoldjarfullofancientcardsandt (103:1293)
            left: 28 * widget.fem,
            top: 280.5001220703 * widget.fem,
            child: Align(
              child: SizedBox(
                width: 303 * widget.fem,
                height: 44 * widget.fem,
                child: Text(
                  widget.args.card.description,
                  style: SafeGoogleFont(
                    'SF Pro Display',
                    fontSize: 20 * widget.ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.1 * widget.ffem / widget.fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // grafik4Avh (103:1295)
            left: 28 * widget.fem,
            top: 66 * widget.fem,
            child: Align(
              child: SizedBox(
                width: 302 * widget.fem,
                height: 202 * widget.fem,
                child: Image.asset(
                  'assets/images/placeholder_small.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            // group7qmw (106:3856)
            left: 46.744140625 * widget.fem,
            top: 520.1431884766 * widget.fem,
            child: Align(
              child: SizedBox(
                width: 32.83 * widget.fem,
                height: 46.36 * widget.fem,
                child: Image.asset(
                  'assets/images/sword.png',
                  width: 32.83 * widget.fem,
                  height: 46.36 * widget.fem,
                ),
              ),
            ),
          ),
          Positioned(
            // WNH (103:1285)
            left: 15 * widget.fem,
            top: 531.5001220703 * widget.fem,
            child: Center(
              child: Align(
                child: SizedBox(
                  width: 26 * widget.fem,
                  height: 22 * widget.fem,
                  child: Text(
                    strength.toString(),
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'SF Pro Display',
                      fontSize: 48 * widget.ffem,
                      fontWeight: FontWeight.w700,
                      height: 0.4583333333 * widget.ffem / widget.fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            // group8Mth (106:3860)
            left: 302 * widget.fem,
            top: 521.9998779297 * widget.fem,
            child: Align(
              child: SizedBox(
                width: 50 * widget.fem,
                height: 50 * widget.fem,
                child: Image.asset(
                  'assets/images/health.png',
                  width: 50 * widget.fem,
                  height: 50 * widget.fem,
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                      incrementStrength();
                    },
                    icon: const Icon(
                      Icons.plus_one,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                      decrementStrength();
                    },
                    icon: const Icon(
                      Icons.exposure_minus_1,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(flex: 4, child: Container()),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                      incrementHealth();
                    },
                    icon: const Icon(
                      Icons.plus_one,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                      decrementHealth();
                    },
                    icon: const Icon(
                      Icons.exposure_minus_1,
                      color: Colors.white,
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
