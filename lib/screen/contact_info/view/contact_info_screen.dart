import 'package:flutter/cupertino.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({Key? key}) : super(key: key);

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Row(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(CupertinoIcons.back)),
            const Text("Contact"),
          ],
        ),
        trailing: const Text('Edit'),
      ),
      backgroundColor: CupertinoColors.systemGrey6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 110),
              SizedBox(
                height: 150,
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  width: MediaQuery.sizeOf(context).width * 0.3,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: CupertinoColors.inactiveGray),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'JA',
                      style:
                          TextStyle(color: CupertinoColors.white, fontSize: 30),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'John Appleseed',
                style: TextStyle(color: CupertinoColors.black, fontSize: 25),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  boxTile(context, CupertinoIcons.ellipses_bubble, 'Message'),
                  boxTile(context, CupertinoIcons.phone, 'Call'),
                  boxTile(context, CupertinoIcons.mail, 'Mail'),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.08,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CupertinoColors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("mobile"),
                          Text(
                            "(888) 555-5512",
                            style: TextStyle(
                                fontSize: 20,
                                color: CupertinoColors.systemBlue),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.08,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CupertinoColors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("home"),
                          Text(
                            "(888) 555-1212",
                            style: TextStyle(
                                fontSize: 20,
                                color: CupertinoColors.activeBlue),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.08,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: CupertinoColors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("work"),
                          Text(
                            "John-AppleSeed@mac.com",
                            style: TextStyle(
                                fontSize: 20,
                                color: CupertinoColors.systemBlue),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.15,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CupertinoColors.white),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("work"),
                      Text(
                        "3484 Kuhl Avenue",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Atlanta GA 30303",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "USA",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.15,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CupertinoColors.white),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("home"),
                      Text(
                        "1234 Laurel Street",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Atlanta GA 30303",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "USA",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container boxTile(BuildContext context, IconData icon, String text) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.08,
      width: MediaQuery.sizeOf(context).width * 0.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CupertinoColors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
