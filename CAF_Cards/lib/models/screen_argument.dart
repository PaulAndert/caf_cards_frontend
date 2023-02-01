import 'package:myapp/models/ability.dart';
import 'package:myapp/models/Gamecard.dart';


class ScreenArgument {
  final String deviceId;
  final Gamecard card;
  final Ability ability;

  ScreenArgument(this.deviceId, this.card, this.ability);
}