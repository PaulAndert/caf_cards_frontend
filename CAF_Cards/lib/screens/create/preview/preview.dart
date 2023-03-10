import 'package:flutter/material.dart';
import 'package:myapp/services/card_service.dart';
import 'package:myapp/services/user_service.dart';
import 'package:myapp/utils.dart';

import '../../../main.dart';
import '../../../models/Gamecard.dart';
import '../../../models/ability.dart';
import '../../../models/screen_argument.dart';
import '../../../models/user.dart';
import '../../../widgets/big_card.dart';
import '../../home/home.dart';

// shows the detailed card you just build and lets you post and create it now
class CreatePreview extends StatefulWidget {
  const CreatePreview({super.key});

  static const String routeName = "/CreatePreview";

  @override
  State<CreatePreview> createState() => _CreatePreview();
}

class _CreatePreview extends State<CreatePreview> {
  String? deviceId;
  User? user;

  //create the Card in database
  postCard(Gamecard card, String deviceId, Ability ability) async {
    user = await UserService().getUserByDeviceId(deviceId);
    print(user);
    print(ability);
    print(card);
    print(deviceId);
    if (user != null) {
      card.userIds.add(user!.id);
      card.abilityId = ability.id;
      GamecardService().postGamecard(card);
    }
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArgument;
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
              Expanded(
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
                        child: Container(),
                      ),
                    ],
                  )),
              // Card
              Expanded(
                flex: 15,
                child: BigCard(
                  fem: fem,
                  ffem: ffem,
                  args: ScreenArgument(
                    args.deviceId,
                    Gamecard(
                      id: 0,
                      name: args.card.name,
                      description: args.card.description,
                      energy: args.card.energy,
                      strength: args.card.strength,
                      health: args.card.health,
                      userIds: [],
                      abilityId: args.card.abilityId,
                    ),
                    args.ability,
                  ),
                ),
              ),
              // Confirm Button
              Expanded(
                flex: 4,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      postCard(args.card, args.deviceId, args.ability);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyApp(),
                      ));
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
                          "Confirm",
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
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
