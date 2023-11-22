import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: Row(
          children: [
            Icon(CupertinoIcons.back),
            Text("Lists"),
          ],
        ),
        trailing: Icon(CupertinoIcons.add),
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
