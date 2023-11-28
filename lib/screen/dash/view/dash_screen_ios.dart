import 'package:contact_ios_app/screen/contact_info/view/contact_info_screen.dart';
import 'package:contact_ios_app/screen/dash/provider/dash_provider.dart';
import 'package:contact_ios_app/screen/home/view/contact_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class DashScreenIos extends StatefulWidget {
  const DashScreenIos({super.key});

  @override
  State<DashScreenIos> createState() => _DashScreenIosState();
}

class _DashScreenIosState extends State<DashScreenIos> {
  DashProvider? providerr;
  DashProvider? providerw;

  List<Widget> screens = [
    const ContactScreen(),
    const ContactInfoScreen(),
  ];
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    providerr = context.read<DashProvider>();
    providerw = context.watch<DashProvider>();
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: CupertinoSlidingSegmentedControl(
          groupValue: selectedValue,
          children: const {
            0: Padding(padding: EdgeInsets.all(8), child: Text('Contact')),
            1: Padding(padding: EdgeInsets.all(8), child: Text('Contact Info')),
          },
          onValueChanged: (value) {
            selectedValue = value!;
            providerw!.changeStep(selectedValue);
          },
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          currentIndex: providerr!.stepIndex,
          onTap: (value) {
            int i = value;
            providerr!.changeStep(i);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: 'Contact'),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return screens[providerw!.stepIndex];
            },
          );
        },
      ),
    );
  }
}
