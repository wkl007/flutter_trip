package com.wkl.flutter_trip

import android.os.Bundle

import io.flutter.embedding.android.FlutterActivity
import com.umeng.analytics.MobclickAgent
import com.umeng.commonsdk.UMConfigure

class MainActivity : FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        UMConfigure.init(this, "5cc2c66a570df33914000e9f", "Flutter Trip", UMConfigure.DEVICE_TYPE_PHONE, null)
        UMConfigure.setLogEnabled(true)
        com.umeng.umeng_common_sdk.UmengCommonSdkPlugin.setContext(this)
        android.util.Log.i("UMLog", "onCreate@MainActivity")
    }

    override fun onPause() {
        super.onPause()
        MobclickAgent.onPause(this)
        android.util.Log.i("UMLog", "onPause@MainActivity")
    }

    override fun onResume() {
        super.onResume()
        MobclickAgent.onResume(this)
        android.util.Log.i("UMLog", "onResume@MainActivity")
    }
}
