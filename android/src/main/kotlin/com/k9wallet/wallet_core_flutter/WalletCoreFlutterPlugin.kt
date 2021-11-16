package com.k9wallet.wallet_core_flutter

import androidx.annotation.NonNull
import com.google.protobuf.ByteString

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import wallet.core.java.AnySigner
import wallet.core.jni.CoinType
import wallet.core.jni.HDVersion
import wallet.core.jni.HDWallet
import wallet.core.jni.Purpose
import wallet.core.jni.proto.Ethereum


/** WalletCoreFlutterPlugin */
class WalletCoreFlutterPlugin : FlutterPlugin, MethodCallHandler {
    private lateinit var channel: MethodChannel
    private var wallet: HDWallet? = null

    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "wallet_core_flutter")
        channel.setMethodCallHandler(this)
        System.loadLibrary("TrustWalletCore")
    }


    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        val handler = CallHandler(call, result)
        when (call.method) {
            "createWallet" -> {
               wallet = handler.createWallet();
            }
            "importWallet" -> {
                wallet = handler.importWallet()
            }
            "getETHPrivateKey" -> {
                wallet?.let {
                    handler.getETHPrivateKey(it)
                }
            }
            "signETHTransaction" -> {
                wallet?.let {
                    handler.signETHTransaction(it)
                }
            }
            "getWalletMnemonic" -> {
                wallet?.let {
                    result.success(it.mnemonic())
                }
            }
            else -> {
                result.notImplemented()
            }
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
        wallet = null
    }
}
