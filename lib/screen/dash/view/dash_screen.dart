import 'package:contact_ios_app/screen/contact_info/view/contact_info_screen_android.dart';
import 'package:contact_ios_app/screen/dash/provider/dash_provider.dart';
import 'package:contact_ios_app/screen/home/view/contact_screen_android.dart';
import 'package:contact_ios_app/screen/profile/view/profile_screen_android.dart';
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
    const ProfileScreenAndroid(),
  ];

  @override
  Widget build(BuildContext context) {
    providerr = context.read<DashProvider>();
    providerw = context.watch<DashProvider>();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Phone',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          bottom: TabBar(
            // controller: _tabController,
            onTap: (value) {
              int i = value;
              providerr!.changeStep(i);
            },
            tabs: const [
              Tab(
                icon: Icon(Icons.recent_actors),
              ),
              Tab(
                icon: Icon(Icons.contact_mail),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
        body: TabBarView(
            // controller: _tabController,
            children: screen),
      ),
    );
  }
}
