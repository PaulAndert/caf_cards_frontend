import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'dart:io' show Platform;
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/trade.dart';
import 'package:myapp/services/trade_service.dart';
import 'package:myapp/utils.dart';

import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../models/user.dart';
import '../../../services/helper_service.dart';
import '../../../services/user_service.dart';
import '../select_card/trading-window-41b.dart';

class MyQRView extends StatefulWidget {
  const MyQRView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyQRView();
}

class _MyQRView extends State<MyQRView> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  String? deviceId;
  User? user;
  Trade? postedTrade;
  var deviceIdLoaded = false;
  var userLoaded = false;
  var tradeLoaded = false;

  @override
  void initState() {
    super.initState();
    getDeviceId();
  }

  getDeviceId() async {
    deviceId = await HelperService().getUserId();
    if (deviceId != null) {
      setState(() {
        deviceIdLoaded = true;
      });
    }
  }

  getUser(deviceId) async {
    user = await UserService().getUserByDeviceId(deviceId);
    if (user != null) {
      setState(() {
        userLoaded = true;
      });
    }
  }

  postTrade(sendId, receivedId) async {
    Trade trade = Trade(
        id: 0,
        senderDeviceId: sendId,
        receiverDeviceId: receivedId,
        senderCardId: 0,
        receiverCardId: 0,
        senderAccepted: false,
        receiverAccepted: false,
        canBeDeleted: false);
    postedTrade = await TradeService().postTrade(trade);
    setState(() {
      tradeLoaded = true;
    });
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    if (result != null) {
      getUser(result!.code);
      if (userLoaded && deviceIdLoaded) {
        if (!tradeLoaded) {
          postTrade(deviceId, result!.code);
        }
        return TradeSelectCard();
      }
    }
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff202024),
        ),
        child: Column(
          children: <Widget>[
            Expanded(flex: 4, child: _buildQrView(context)),
            Expanded(
              flex: 1,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    if (result != null)
                      Text(
                        'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}',
                        style: const TextStyle(color: Colors.white),
                      )
                    else
                      const Text(
                        'Scan a code',
                        style: TextStyle(color: Colors.white),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(8),
                          child: ElevatedButton(
                              onPressed: () async {
                                await controller?.toggleFlash();
                                setState(() {});
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent,
                              ),
                              child: FutureBuilder(
                                future: controller?.getFlashStatus(),
                                builder: (context, snapshot) {
                                  return Text('Flash: ${snapshot.data}');
                                },
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.all(8),
                          child: ElevatedButton(
                              onPressed: () async {
                                await controller?.flipCamera();
                                setState(() {});
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent,
                              ),
                              child: FutureBuilder(
                                future: controller?.getCameraInfo(),
                                builder: (context, snapshot) {
                                  if (snapshot.data != null) {
                                    return Text(
                                        'Camera facing ${describeEnum(snapshot.data!)}');
                                  } else {
                                    return const Text('loading');
                                  }
                                },
                              )),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(8),
                          child: ElevatedButton(
                            onPressed: () async {
                              await controller?.pauseCamera();
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.deepPurpleAccent,
                            ),
                            child: const Text('pause',
                                style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(8),
                          child: ElevatedButton(
                            onPressed: () async {
                              await controller?.resumeCamera();
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.deepPurpleAccent,
                            ),
                            child: const Text('resume',
                                style: TextStyle(fontSize: 20)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
