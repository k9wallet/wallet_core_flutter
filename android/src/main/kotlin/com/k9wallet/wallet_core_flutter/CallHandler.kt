package com.k9wallet.wallet_core_flutter

import com.google.protobuf.ByteString
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import wallet.core.java.AnySigner
import wallet.core.jni.CoinType
import wallet.core.jni.HDWallet
import wallet.core.jni.proto.Ethereum
import java.lang.Exception

class CallHandler(private val call: MethodCall, private val result: MethodChannel.Result) {

    fun createWallet(): HDWallet? {
        val pp = call.argument<String>("passphrase")
        pp?.let {
            val w = HDWallet(128, it);
            result.success(true)
            return w
        }
        result.error("Null", "Passphrase is null", "")
        return null
    }

    fun importWallet(): HDWallet? {
        val mn = call.argument<String>("mnemonic")
        val pp = call.argument<String>("passphrase")
        mn?.let {
            return try {
                val w = HDWallet( it, pp)
                result.success(true)
                w
            } catch (e: Exception) {
                print(e.message)
                null
            }

        }
        result.error("Null", "mnemonic is null", "")
        return null
    }

    fun signETHTransaction(wallet: HDWallet) {
        val transaction = call.argument<ByteArray>("transaction")
        val input: Ethereum.SigningInput = Ethereum.SigningInput.parseFrom(transaction).apply {
            val byteString = ByteString.copyFrom(wallet.getKeyForCoin(CoinType.ETHEREUM).data())
            toBuilder().setPrivateKey(byteString).build()
        }
        val output: Ethereum.SigningOutput = AnySigner.sign(input, CoinType.ETHEREUM, Ethereum.SigningOutput.parser())
        result.success(output.toByteArray())
    }

    fun getETHPrivateKey(wallet: HDWallet) {
        val key = wallet.getKeyForCoin(CoinType.ETHEREUM)
        result.success(key.data())
    }
}