import 'package:flutter/material.dart';
import 'package:wallet_core_flutter/wallet_core_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                WalletCoreFlutter.importWallet(
                        "name dash bleak force moral disease shine response menu rescue more will")
                    .then((_) {
                  WalletCoreFlutter.getETHPrivateKey.then((key) {
                    setState(() {
                      _platformVersion = "ETH Key: ${key}";
                    });
                  });
                });
              },
              child: Text('Import with nmenomic'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                WalletCoreFlutter.importWallet(
                        "name dash bleak force moral disease shine response menu rescue more will")
                    .then((_) {
                  WalletCoreFlutter.getWalletMnemonic().then((key) {
                    setState(() {
                      _platformVersion = "MNemonic: ${key}";
                    });
                  });
                });
              },
              child: Text('get nmenomic'),
            ),
            Center(
              child: Text('Value: $_platformVersion\n'),
            ),
          ],
        ),
      ),
    );
  }
}
