# caf_cards_frontend

Necessary:
$ flutter pub add qr_flutter (in project root directory)
$ flutter pub add flutter_barcode_scanner (in project root directory)
in run config unter "Additional run args" --no-sound-null-safety packen

-> root:
- plattform specific folders (android, ios, windows, macos, linux, web)
- assets = images and other static stuff
- fonts = all the fonts for this project

-> lib:
- screens = for every different screen page you create a unique folder + dart file with the code for only that scren page
- widgets = folder for the widgets that are being used in the whole project for example: nav-bar or app-bar  
--> if a widget is only used once it goes into the folder for that particular screen 
- utils = folder for the functions that are being used in the whole project
- services = everything that comes or goes outside the project (Firebase, DB, Microservices, ...)
- models = like entitys in Spring = databundles that you can use everywhere in the project
- main.dart = file that starts the whole app

qr: https://pub.dev/packages/qr
qr_code_scanner: https://pub.dev/packages/qr_code_scanner


TODO for now:
- neue API-Endpunkte (Trading und so)
- QR-Code Funktionalität
- Trading syncen und sowas
- Create Textfelder als inputs in Obj und von Seite zu Seite übergeben

TODO for later:
- Collection machen (gehöret nicht zum UseCase aber wäre schön)
- home screen: stats in eine Tabelle
- navbar: anstatt Pipette ein Schwert (https://www.fluttericon.com/)