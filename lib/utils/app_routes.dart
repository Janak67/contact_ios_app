import 'package:contact_ios_app/screen/contact_info/view/contact_info_screen.dart';
import 'package:contact_ios_app/screen/contact_info/view/contact_info_screen_android.dart';
import 'package:contact_ios_app/screen/home/view/contact_screen.dart';
import 'package:contact_ios_app/screen/home/view/contact_screen_android.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> screen_routes = {
  '/': (context) => const ContactScreen(),
  'infoIos': (context) => const ContactInfoScreen(),
};
Map<String, WidgetBuilder> screen_routes_android = {
  '/': (context) => const ContactScreenAndroid(),
  'infoAndroid': (context) => const ContactInfoScreenAndroid(),
};
