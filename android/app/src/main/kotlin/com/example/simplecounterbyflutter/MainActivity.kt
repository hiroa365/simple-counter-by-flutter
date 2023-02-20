package com.example.simplecounterbyflutter

import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    companion object {
        private const val CHANNEL = "samples.flutter.dev/test"
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "readMagStripe" -> {
                        val ret = MSController.waitMagStripeRead()
                        result.success(ret)
                    }
                    "detectCard" -> {
                        val ret = MSController.detectCard()
                        result.success(ret)
                    }
                }

            }
    }
}

object MSController {
    private val TAG = this.javaClass.simpleName

    fun waitMagStripeRead(): Boolean {
        Log.i(TAG, "waitMagStripeRead.");
        return true
    }

    fun detectCard(): Boolean {
        Log.i(TAG, "detectCard.");
        return true
    }
}