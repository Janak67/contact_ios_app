import 'dart:io';
import 'package:contact_ios_app/screen/contact_info/provider/contact_info_provider.dart';
import 'package:contact_ios_app/screen/dash/provider/dash_provider.dart';
import 'package:contact_ios_app/screen/home/provider/contact_provider.dart';
import 'package:contact_ios_app/utils/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ContactProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ContactInfoProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DashProvider(),
        ),
      ],
      child: Platform.isAndroid
          ? MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(useMaterial3: true),
              routes: screen_routes_android,
            )
          : CupertinoApp(
              debugShowCheckedModeBanner: false,
              routes: screen_routes,
            ),
    ),
  );
}
