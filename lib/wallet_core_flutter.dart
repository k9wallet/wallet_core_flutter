import 'dart:async';

import 'package:flutter/services.dart';
import 'package:wallet_core_flutter/protos/Ethereum.pb.dart' as eth;

class WalletCoreFlutter {
  static const MethodChannel _channel =
      const MethodChannel('wallet_core_flutter');

  static Future<String?> get getETHPrivateKey async {
    final String? key = await _channel.invokeMethod('getETHPrivateKey');
    return key;
  }

  static Future<void> importWallet(String mnemonic,
      [String? passphrase]) async {
    await _channel.invokeMethod('importWallet', {
      "mnemonic": mnemonic,
      "passphrase": passphrase ?? "",
    });
    return;
  }

  static Future<eth.SigningOutput?> signETHTransaction(
    eth.SigningInput input,
  ) async {
    final transaction = input.writeToBuffer();
    final res = await _channel.invokeMethod('signETHTransaction', transaction);
    eth.SigningOutput output = eth.SigningOutput.fromBuffer(res);
    return output;
  }

  static Future<String?> getWalletMnemonic() async {
    final String? mnemonic = await _channel.invokeMethod('getWalletMnemonic');
    return mnemonic;
  }
}
