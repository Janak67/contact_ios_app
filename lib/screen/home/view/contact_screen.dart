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
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Row(
          children: [
            Icon(CupertinoIcons.back),
            Text("Lists"),
          ],
        ),
        trailing: Icon(CupertinoIcons.add),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 110),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Contact",
                style: TextStyle(color: CupertinoColors.black, fontSize: 30),
              ),
            ),
            SizedBox(height: 10),
            CupertinoSearchTextField(
              placeholder: 'Search',
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'A',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(thickness: 1),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'John AppleSeeds',
                      style: TextStyle(color: CupertinoColors.black),
                    )),
                Divider(thickness: 1),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'B',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(thickness: 1),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Kate Bell',
                      style: TextStyle(color: CupertinoColors.black),
                    )),
                Divider(thickness: 1),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'H',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(thickness: 1),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Anna Haro',
                      style: TextStyle(color: CupertinoColors.black),
                    )),
                Divider(thickness: 1),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Daniel Higgins Jr.',
                      style: TextStyle(color: CupertinoColors.black),
                    )),
                Divider(thickness: 1),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'T',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(thickness: 1),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'David Taylor',
                      style: TextStyle(color: CupertinoColors.black),
                    )),
                Divider(thickness: 1),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Z',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(thickness: 1),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Hank M. Zakroff',
                      style: TextStyle(color: CupertinoColors.black),
                    )),
                Divider(thickness: 1),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
