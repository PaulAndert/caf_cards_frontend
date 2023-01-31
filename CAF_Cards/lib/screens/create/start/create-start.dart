import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/CreateBasicArguments.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/widgets/navbar.dart';

import '../points/create-points.dart';

class CreateStart extends StatefulWidget {
  static const String routeName = "/CreateStart";

  @override
  State<CreateStart> createState() => _CreateStartState();
}

class _CreateStartState extends State<CreateStart> {

  final cardNameController = TextEditingController();
  final cardDescriptionController = TextEditingController();
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
        // createstart7Bb (10:10942)
        padding: EdgeInsets.fromLTRB(8*fem, 31*fem, 9*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff202024),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              // autogroupd3idwwK (T1Stnm92DEKwBygMp2d3id)
              flex: 33,
              child: Stack(
                children: [
                  Positioned(
                    // frame102Sy (111:1535)
                    left: 47*fem,
                    top: 0*fem,
                    child: Container(
                      width: 100*fem,
                      height: 100*fem,
                    ),
                  ),
                  Positioned(
                    // inputsv2Z (111:1552)
                    left: 1*fem,
                    top: 30.5*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                      width: 375*fem,
                      height: 94.5*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // tableviewtitleMNm (I111:1552;26:1582)
                            padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                            width: double.infinity,
                            height: 24.5*fem,
                            child: Container(
                              // rowFj3 (I111:1552;26:1582;1881:9545)
                              width: 123*fem,
                              height: 23*fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // titleAjX (I111:1552;26:1582;138:19)
                                    left: 0*fem,
                                    top: 0.5*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 123*fem,
                                        height: 22*fem,
                                        child: Text(
                                          'Card name',
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
                          SizedBox(
                            // inputPMP (I111:1552;26:1583)
                            width: double.infinity,
                            height: 44*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // frameJjF (I111:1552;26:1584)
                                  left: 16*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 343*fem,
                                      height: 44*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(10*fem),
                                          border: Border.all(color: Color(0xffe5e5ea)),
                                          color: Color(0xfff9f9f9),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // tableviewrowaAy (I111:1552;26:1585)
                                  left: 16*fem,
                                  top: -1*fem,
                                  child: Container(
                                    width: 343*fem,
                                    height: 45*fem,
                                    child: Container(
                                      // autogroupeikd469 (T1Suy9LkByRPJvkijkEikD)
                                      padding: EdgeInsets.fromLTRB(16*fem, 7*fem, 15*fem, 5*fem),
                                      width: double.infinity,
                                      height: 44*fem,
                                      child: TextField(
                                        decoration: const InputDecoration(
                                          hintText: 'Name',
                                        ),
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2941176471*ffem/fem,
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
                    // inputsSku (111:1584)
                    left: 1*fem,
                    top: 124.5*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                      width: 375*fem,
                      height: 94.5*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // tableviewtitleu8h (I111:1584;26:1582)
                            padding: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
                            width: double.infinity,
                            height: 24.5*fem,
                            child: Container(
                              // rowoUy (I111:1584;26:1582;1881:9545)
                              width: 166*fem,
                              height: 23*fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // titleMuo (I111:1584;26:1582;138:19)
                                    left: 0*fem,
                                    top: 0.5*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 166*fem,
                                        height: 22*fem,
                                        child: Text(
                                          'Card description',
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
                          Container(
                            // inputzxm (I111:1584;26:1583)
                            width: double.infinity,
                            height: 44*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // frame7Gh (I111:1584;26:1584)
                                  left: 16*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 343*fem,
                                      height: 44*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(10*fem),
                                          border: Border.all(color: Color(0xffe5e5ea)),
                                          color: Color(0xfff9f9f9),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // tableviewrowms3 (I111:1584;26:1585)
                                  left: 16*fem,
                                  top: -1*fem,
                                  child: Container(
                                    width: 343*fem,
                                    height: 45*fem,
                                    child: Container(
                                      // autogrouphxy5UWZ (T1SvZDCKFf3aynNfKHhxY5)
                                      padding: EdgeInsets.fromLTRB(16*fem, 7*fem, 15*fem, 5*fem),
                                      width: double.infinity,
                                      height: 44*fem,
                                      child: TextField(
                                        decoration: const InputDecoration(
                                          hintText: 'Description',
                                        ),
                                        style: SafeGoogleFont (
                                          'SF Pro Display',
                                          fontSize: 17*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2941176471*ffem/fem,
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
            Expanded(
              // title5Cq (26:2289)
              flex: 5,
              child: Text(
                'Select card energy costs',
                style: SafeGoogleFont (
                  'SF Pro Display',
                  fontSize: 17*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2941176471*ffem/fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Expanded(
              // othersliderx1j (26:2210)
              flex: 10,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    // 21b (I26:2210;26:1061;1388:23)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.5*fem, 0*fem),
                      child: Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'SF Pro Display',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2575*ffem/fem,
                          color: Color(0xff007aff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // slidersgM3 (I26:2210;26:1056)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.5*fem, 0*fem),
                    width: 279*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // trackBYh (I26:2210;26:1057)
                          left: 0*fem,
                          top: 12*fem,
                          child: Align(
                            child: SizedBox(
                              width: 279*fem,
                              height: 4*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(1.5*fem),
                                  color: Color(0xffc7c7cc),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // fillr93 (I26:2210;26:1058)
                          left: 0*fem,
                          top: 12*fem,
                          child: Align(
                            child: SizedBox(
                              width: 115*fem,
                              height: 4*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(3*fem),
                                  color: Color(0xff007aff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // knob7am (I26:2210;26:1059;1078:2170)
                          left: 89*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 28*fem,
                              height: 28*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(100*fem),
                                  color: Color(0xffffffff),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x07000000),
                                      offset: Offset(0*fem, 3*fem),
                                      blurRadius: 0.5*fem,
                                    ),
                                    BoxShadow(
                                      color: Color(0x02000000),
                                      offset: Offset(0*fem, 1*fem),
                                      blurRadius: 0.5*fem,
                                    ),
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      offset: Offset(0*fem, 3*fem),
                                      blurRadius: 4*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    // 48d (I26:2210;26:1060;1388:23)
                    child: Text(
                      '5',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'SF Pro Display',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2575*ffem/fem,
                        color: Color(0xff007aff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              // buttonsprimerym33 (111:1528)
             flex: 10,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, CreatePoints.routeName, arguments: CreateBasicArguments(cardNameController.text, cardDescriptionController.text, 0)
                  );
                },
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 50*fem,
                  decoration: BoxDecoration (
                    color: Color(0xff000080),
                    borderRadius: BorderRadius.circular(12*fem),
                  ),
                  child: Center(
                    child: Center(
                      child: Text(
                        'Continue',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}