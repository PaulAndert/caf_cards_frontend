import 'package:myapp/models/ability.dart';
import 'package:myapp/models/card.dart';


class ScreenArguments {
  final String deviceId;
  final Gamecard card;
  final Ability ability;

  ScreenArguments(this.deviceId, this.card, this.ability);
}