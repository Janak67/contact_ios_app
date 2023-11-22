import 'package:contact_ios_app/screen/contact_info/view/contact_info_screen.dart';
import 'package:contact_ios_app/screen/home/view/contact_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> screen_routes = {
  '/': (context) => const ContactScreen(),
  'info': (context) => const ContactInfoScreen(),
};
