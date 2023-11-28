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

  @override
  Widget build(BuildContext context) {
    providerr = context.read<DashProvider>();
    providerw = context.watch<DashProvider>();
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: providerr!.stepIndex,
        onTap: (value) {
          int i= value;
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
            return Column(
              children: screens,
            );
          },
        );
      },
    );
    //   CupertinoTabView(
    //   builder: (BuildContext context) {
    //     return SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           IndexedStack(
    //             index: providerw!.stepIndex,
    //             children: screens,
    //           ),
    //           CupertinoTabBar(
    //             backgroundColor: CupertinoColors.darkBackgroundGray,
    //             activeColor: CupertinoColors.white,
    //             currentIndex: providerr!.stepIndex,
    //             onTap: (value) {
    //               int i = value;
    //               providerr!.changeStep(i);
    //             },
    //             items: const [
    //               BottomNavigationBarItem(
    //                   icon: Icon(CupertinoIcons.home), label: 'Home'),
    //               BottomNavigationBarItem(
    //                   icon: Icon(CupertinoIcons.person), label: 'Contact'),
    //             ],
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
