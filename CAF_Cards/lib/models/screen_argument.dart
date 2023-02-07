import 'package:myapp/models/ability.dart';
import 'package:myapp/models/Gamecard.dart';

// class to transfer data from one page to another
class ScreenArgument {
  final String deviceId;
  final Gamecard card;
  final Ability ability;

  ScreenArgument(this.deviceId, this.card, this.ability);
}