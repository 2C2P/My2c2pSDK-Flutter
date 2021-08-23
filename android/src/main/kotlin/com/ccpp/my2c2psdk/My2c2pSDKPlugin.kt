package com.ccpp.my2c2psdk

import android.app.Activity
import android.content.Intent
import android.util.Log
import androidx.annotation.NonNull
import com.ccpp.my2c2psdk.cores.My2c2pResponse
import com.ccpp.my2c2psdk.cores.My2c2pSDK
import com.google.gson.Gson

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry

/** My2c2pSDKPlugin */
class My2c2pSDKPlugin: FlutterPlugin, MethodCallHandler, ActivityAware, PluginRegistry.ActivityResultListener {

  private lateinit var channel : MethodChannel
  private var activity: Activity? = null
  private var results: Result? = null

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "my2c2psdk")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    when (call.method) {
      "getPlatformVersion" -> {
        result.success("Android ${android.os.Build.VERSION.RELEASE}")
      }
      "proceed" -> {
        results = result
        proceed(call, result)
      }
      else -> {
        result.notImplemented()
      }
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }

  override fun onDetachedFromActivity() {
    activity = null
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    activity = binding.activity
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    activity = binding.activity
    binding.addActivityResultListener(this)
  }

  override fun onDetachedFromActivityForConfigChanges() {
    activity = null
  }

  override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
    val result = data?.extras?.getParcelable<My2c2pResponse>(My2c2pResponse.RESPONSE)
    results?.success(Gson().toJson(result))
    return false
  }

  /**
   * Proceed function
   */

  private fun proceed(@NonNull call: MethodCall, @NonNull result: Result) {
    val reqJson = call.argument<String>("request") ?: ""
    var model: My2c2pSDK? = null

    try {
      model = Gson().fromJson(reqJson, My2c2pSDK::class.java)
    } catch (e: java.lang.Exception) {
      result.error("30", e.localizedMessage, e)
      return
    }

    val sdk = model
    sdk.version = "9.7" // From My2c2pSDK class
    sdk.proceed(activity, 1000)
  }
}
