# caf_cards_frontend

This project is part of the student project for the module Cross Device Interaction of the [TH Brandenburg](https://www.th-brandenburg.de/startseite/) in the winter semester 2022. You can find the associated [backend here](https://github.com/kekolyt/caf_cards_backend).


## Requirements
- Flutter v3.3.9
- Dart v2.18.5
- DevTools v2.15.0


## Instalation:

download the project:
```console
git clone https://github.com/PaulAndert/caf_cards_frontend
```

install the dependencies
```console
flutter pub get
```

and then run the projekt via Android Studio on your [Smartphone or Emulator](https://docs.flutter.dev/get-started/install/windows#android-setup)  
IOS Setup: open the caf_cards_frontend/CAF_Cards/ios folder in Xcode and connect your Iphone in Developer Mode via cable, then just press Start in XCode (with this methode you need to change the default ip to your current local ip in the 4 files in the lib/services : ability_service.dart, card_service.dart, trade_service.dart and user_service.dart)

## Modify the Run configuration
at "Additional run args" insert "--no-sound-null-safety --dart-define=IP=YOUR_IP_ADDRESS"  
-> instead of YOUR_IP_ADDRESS write your current local ip, that is needed because android studio doest work with just localhost 

## Tip for first start:
- after entering home screen for the first time, make a move on the navbar, so that the statistics of the new user are displayed
