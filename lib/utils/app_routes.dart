import 'package:contact_ios_app/screen/contact_info/view/contact_info_screen.dart';
import 'package:contact_ios_app/screen/dash/view/dash_screen.dart';
import 'package:contact_ios_app/screen/dash/view/dash_screen_ios.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> screen_routes = {
  '/':(context) => const DashScreenIos(),
  // '/': (context) => const ContactScreen(),
  'infoIos': (context) => const ContactInfoScreen(),
};
Map<String, WidgetBuilder> screen_routes_android = {
  '/':(context) => const DashScreen(),
  // '/': (context) => const ContactScreenAndroid(),
  // 'infoAndroid': (context) => const ContactInfoScreenAndroid(),
};
