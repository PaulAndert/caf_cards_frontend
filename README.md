# caf_cards_frontend

Necessary:
- ($ flutter pub add qr_flutter (in project root directory))
- ($ flutter pub add flutter_barcode_scanner (in project root directory))
- in run config at "Additional run args" insert "--no-sound-null-safety"
- since localhost doesnt work with flutter at "Additional run args" insert "--dart-define=IP=YOUR_IP_ADDRESS"

-> root:
- platform specific folders (android, ios, windows, macos, linux, web)
- assets = images and other static stuff
- fonts = all the fonts for this project

-> lib:
- screens = for every different screen page you create a unique folder + dart file with the code for only that scren page
- widgets = folder for the widgets that are being used in the whole project for example: nav-bar or app-bar  
  - if a widget is only used once it goes into the folder for that particular screen 
- utils = folder for the functions that are being used in the whole project
- services = everything that comes or goes outside the project (Firebase, DB, Microservices, ...)
- models = like entitys in Spring = databundles that you can use everywhere in the project
- main.dart = file that starts the whole app

qr: https://pub.dev/packages/qr
qr_code_scanner: https://pub.dev/packages/qr_code_scanner


TODO for now:
- Detailed Collection View
- Create fertig
- Trade einige Fehler:
  - Tradeabbruch in select ändert navbar nicht
  - Partner bekommt nicht mit dass Trade beendet (sowohl bei abbruch als auch bei ende)
  - nach erfolgreichem Tradeende pasiert nichts (move to Home?)

TODO for later:
- navbar: anstatt Pipette ein Schwert (https://www.fluttericon.com/)