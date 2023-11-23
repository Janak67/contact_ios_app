import 'package:contact_ios_app/screen/home/provider/contact_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  ContactProvider? providerw;
  ContactProvider? providerr;

  @override
  Widget build(BuildContext context) {
    providerr = context.read<ContactProvider>();
    providerw = context.watch<ContactProvider>();
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: const Row(
          children: [
            Icon(CupertinoIcons.back),
            Text("Lists"),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => CupertinoActionSheet(
                    title: const Text('Aru Sure to exit'),
                    actions: [
                      CupertinoActionSheetAction(
                        onPressed: () {},
                        isDefaultAction: true,
                        child: const Text('Yes'),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () {},
                        isDestructiveAction: true,
                        child: const Text('No'),
                      ),
                    ],
                    cancelButton: CupertinoActionSheetAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                  ),
                );
              },
              child: const Icon(CupertinoIcons.add_circled_solid),
            ),
            CupertinoButton(
              child: const Icon(CupertinoIcons.calendar),
              onPressed: () {
                showCupertinoDialog(
                  builder: (context) {
                    return CupertinoDatePicker(
                      onDateTimeChanged: (value) {
                        providerr!.changeDate(value);
                      },
                      maximumDate: DateTime(2001),
                      maximumYear: 2001,
                      minimumDate: DateTime(2025),
                      minimumYear: 2025,
                      initialDateTime: providerw!.date,
                    );
                  },
                  context: context,
                );
              },
            ),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 110),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Contact",
                  style: TextStyle(color: CupertinoColors.black, fontSize: 30),
                ),
              ),
              const SizedBox(height: 10),
              const CupertinoSearchTextField(placeholder: 'Search'),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'A',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(thickness: 1),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'info');
                    },
                    child: const Text(
                      'John AppleSeeds',
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                  ),
                  const Divider(thickness: 1),
                  const SizedBox(height: 15),
                  const Text(
                    'B',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(thickness: 1),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'info');
                    },
                    child: const Text(
                      'Kate Bell',
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                  ),
                  const Divider(thickness: 1),
                  const SizedBox(height: 15),
                  const Text(
                    'H',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(thickness: 1),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'info');
                    },
                    child: const Text(
                      'Anna Haro',
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                  ),
                  const Divider(thickness: 1),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'info');
                    },
                    child: const Text(
                      'Daniel Higgins Jr.',
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                  ),
                  const Divider(thickness: 1),
                  const SizedBox(height: 15),
                  const Text(
                    'T',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(thickness: 1),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'info');
                    },
                    child: const Text(
                      'David Taylor',
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                  ),
                  const Divider(thickness: 1),
                  const SizedBox(height: 15),
                  const Text(
                    'Z',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(thickness: 1),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'info');
                    },
                    child: const Text(
                      'Hank M. Zakroff',
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                  ),
                  const Divider(thickness: 1),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
