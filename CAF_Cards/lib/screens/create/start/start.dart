import 'package:flutter/material.dart';
import 'package:myapp/models/basic_argument.dart';
import 'package:myapp/utils.dart';
import '../points/points.dart';

class CreateStart extends StatefulWidget {
  const CreateStart({super.key});

  static const String routeName = "/CreateStart";

  @override
  State<CreateStart> createState() => _CreateStartState();
}

class _CreateStartState extends State<CreateStart> {
  final cardNameController = TextEditingController();
  final cardDescriptionController = TextEditingController();
  double _value = 0;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    cardDescriptionController.dispose();
    cardNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(8 * fem, 31 * fem, 9 * fem, 0 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Name and description inputs
            Expanded(
              flex: 9,
              child: Stack(
                children: [
                  Positioned(
                    left: 47 * fem,
                    top: 0 * fem,
                    child: Container(
                      width: 100 * fem,
                      height: 100 * fem,
                    ),
                  ),
                  Positioned(
                    left: 1 * fem,
                    top: 30.5 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 26 * fem),
                      width: 375 * fem,
                      height: 94.5 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                16 * fem, 0 * fem, 16 * fem, 0 * fem),
                            width: double.infinity,
                            height: 24.5 * fem,
                            child: Container(
                              width: 123 * fem,
                              height: 23 * fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0 * fem,
                                    top: 0.5 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 123 * fem,
                                        height: 22 * fem,
                                        child: Text(
                                          'Card name',
                                          style: SafeGoogleFont(
                                            'SF Pro Display',
                                            fontSize: 17 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2941176471 * ffem / fem,
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
                          SizedBox(
                            width: double.infinity,
                            height: 44 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 16 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 343 * fem,
                                      height: 44 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10 * fem),
                                          border: Border.all(
                                              color: Color(0xffe5e5ea)),
                                          color: Color(0xfff9f9f9),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16 * fem,
                                  top: -1 * fem,
                                  child: Container(
                                    width: 343 * fem,
                                    height: 45 * fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(
                                          16 * fem, 7 * fem, 15 * fem, 5 * fem),
                                      width: double.infinity,
                                      height: 44 * fem,
                                      child: TextField(
                                        decoration: const InputDecoration(
                                          hintText: 'Name',
                                        ),
                                        style: SafeGoogleFont(
                                          'SF Pro Display',
                                          fontSize: 17 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2941176471 * ffem / fem,
                                          color: Colors.black,
                                        ),
                                        controller: cardNameController,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 1 * fem,
                    top: 124.5 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 26 * fem),
                      width: 375 * fem,
                      height: 94.5 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(
                                16 * fem, 0 * fem, 16 * fem, 0 * fem),
                            width: double.infinity,
                            height: 24.5 * fem,
                            child: Container(
                              width: 166 * fem,
                              height: 23 * fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0 * fem,
                                    top: 0.5 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 166 * fem,
                                        height: 22 * fem,
                                        child: Text(
                                          'Card description',
                                          style: SafeGoogleFont(
                                            'SF Pro Display',
                                            fontSize: 17 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2941176471 * ffem / fem,
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
                          Container(
                            width: double.infinity,
                            height: 44 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 16 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 343 * fem,
                                      height: 44 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10 * fem),
                                          border: Border.all(
                                              color: const Color(0xffe5e5ea)),
                                          color: const Color(0xfff9f9f9),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16 * fem,
                                  top: -1 * fem,
                                  child: Container(
                                    width: 343 * fem,
                                    height: 45 * fem,
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(
                                          16 * fem, 7 * fem, 15 * fem, 5 * fem),
                                      width: double.infinity,
                                      height: 44 * fem,
                                      child: TextField(
                                        decoration: const InputDecoration(
                                          hintText: 'Description',
                                        ),
                                        style: SafeGoogleFont(
                                          'SF Pro Display',
                                          fontSize: 17 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2941176471 * ffem / fem,
                                          color: Colors.black,
                                        ),
                                        controller: cardDescriptionController,
                                      ),
                                    ),
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
            // slider to select energy costs
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    'Select card energy costs',
                    style: SafeGoogleFont(
                      'SF Pro Display',
                      fontSize: 17 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2941176471 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      valueIndicatorShape:
                          const RectangularSliderValueIndicatorShape(),
                      activeTrackColor: Colors.deepPurpleAccent,
                      thumbColor: Colors.deepPurpleAccent,
                      valueIndicatorColor: Colors.deepPurpleAccent,
                      overlayColor: const Color(0x3d7c4dff),
                      inactiveTrackColor: const Color(0x3d7c4dff),
                      inactiveTickMarkColor: const Color(0xffffffff),
                      activeTickMarkColor: const Color(0xffffffff),
                    ),
                    child: Slider(
                      min: 0,
                      max: 5,
                      divisions: 5,
                      value: _value,
                      label: '$_value',
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            // continue button - using inputs
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, CreatePoints.routeName,
                        arguments: BasicArgument(cardNameController.text,
                            cardDescriptionController.text, _value.toInt()));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.deepPurpleAccent,
                  ),
                  child: Container(
                    width: 200 * fem,
                    height: 50 * fem,
                    child: Center(
                      child: Text(
                        'Continue',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: 25 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2941176471 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
