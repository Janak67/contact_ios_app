import 'dart:io';
import 'package:contact_ios_app/utils/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Platform.isAndroid
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(useMaterial3: true),
            routes: screen_routes_android,
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            routes: screen_routes,
          ),
  );
}
