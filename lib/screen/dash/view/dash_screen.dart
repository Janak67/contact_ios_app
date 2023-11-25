import 'package:contact_ios_app/screen/contact_info/view/contact_info_screen_android.dart';
import 'package:contact_ios_app/screen/dash/provider/dash_provider.dart';
import 'package:contact_ios_app/screen/home/view/contact_screen_android.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({super.key});

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  DashProvider? providerr;
  DashProvider? providerw;
  List<Widget> screen = [
    const ContactScreenAndroid(),
    const ContactInfoScreenAndroid(),
  ];

  @override
  Widget build(BuildContext context) {
    providerr = context.read<DashProvider>();
    providerw = context.watch<DashProvider>();
    return SafeArea(
      child: Scaffold(
        body: screen[providerw!.stepIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: providerr!.stepIndex,
          onTap: (value) {
            int i = value;
            providerr!.changeStep(i);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_page_sharp), label: 'ContactInfo'),
          ],
        ),
      ),
    );
  }
}
