package com.example.flutter_trip;

import android.Manifest;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import org.devio.flutter.splashscreen.SplashScreen;
import org.wkl.flutter.plugin.asr.AsrPlugin;

import java.util.ArrayList;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.message.IUmengRegisterCallback;
import com.umeng.message.PushAgent;

public class MainActivity extends FlutterActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        SplashScreen.show(this, true);// here
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);
        registerSelfPlugin();
        initPermission();


        // 注意：如果您已经在AndroidManifest.xml中配置过appkey和channel值，可以调用此版本初始化函数。
        UMConfigure.init(this, UMConfigure.DEVICE_TYPE_PHONE, "");
        // interval: 单位是毫秒，默认Session间隔时间是30秒
        MobclickAgent.setSessionContinueMillis(30000);

        //获取消息推送代理示例
        PushAgent mPushAgent = PushAgent.getInstance(this);
        //注册推送服务，每次调用register方法都会回调该接口
        mPushAgent.register(new IUmengRegisterCallback() {
            @Override
            public void onSuccess(String deviceToken) {
                //注册成功会返回deviceToken deviceToken是推送消息的唯一标志
                Log.i("deviceToken", "注册成功：deviceToken：-------->  " + deviceToken);
            }

            @Override
            public void onFailure(String s, String s1) {
                Log.e("deviceToken", "注册失败：-------->  " + "s:" + s + ",s1:" + s1);
            }
        });
        PushAgent.getInstance(this).onAppStart();
    }

    @Override
    public void onResume() {
        super.onResume();
        MobclickAgent.onResume(this);
    }

    @Override
    public void onPause() {
        super.onPause();
        MobclickAgent.onPause(this);
    }

    private void registerSelfPlugin() {
        AsrPlugin.registerWith(registrarFor("org.wkl.flutter.plugin.asr.AsrPlugin"));
    }

    /**
     * android 6.0 以上需要动态申请权限
     */
    private void initPermission() {
        String permissions[] = {Manifest.permission.RECORD_AUDIO,
                Manifest.permission.ACCESS_NETWORK_STATE,
                Manifest.permission.INTERNET,
                Manifest.permission.READ_PHONE_STATE,
                Manifest.permission.WRITE_EXTERNAL_STORAGE
        };


        ArrayList<String> toApplyList = new ArrayList<String>();

        for (String perm : permissions) {
            if (PackageManager.PERMISSION_GRANTED != ContextCompat.checkSelfPermission(this, perm)) {
                toApplyList.add(perm);
                //进入到这里代表没有权限.

            }
        }

        String tmpList[] = new String[toApplyList.size()];
        if (!toApplyList.isEmpty()) {
            ActivityCompat.requestPermissions(this, toApplyList.toArray(tmpList), 123);
        }
    }
}
