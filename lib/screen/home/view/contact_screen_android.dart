import 'package:flutter/material.dart';

class ContactScreenAndroid extends StatefulWidget {
  const ContactScreenAndroid({Key? key}) : super(key: key);

  @override
  State<ContactScreenAndroid> createState() => _ContactScreenAndroidState();
}

class _ContactScreenAndroidState extends State<ContactScreenAndroid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey.shade300,
          title: const Text(
            'Contact App',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'infoAndroid');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
