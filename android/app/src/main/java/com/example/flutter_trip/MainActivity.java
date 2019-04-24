package com.example.flutter_trip;

import android.Manifest;
import android.content.pm.PackageManager;
import android.os.Bundle;

import org.wkl.flutter.plugin.asr.AsrPlugin;

import java.util.ArrayList;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;


public class MainActivity extends FlutterActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        GeneratedPluginRegistrant.registerWith(this);
        registerSelfPlugin();
    }

    private void registerSelfPlugin() {
        AsrPlugin.registerWith(registrarFor("org.wkl.flutter.plugin.asr.AsrPlugin"));
    }
}
