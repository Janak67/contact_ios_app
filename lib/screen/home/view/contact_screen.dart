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
            Text(
                '${providerr!.date?.day}/${providerr!.date?.month}/${providerr!.date?.year}'),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => SizedBox(
                    height: 200,
                    child: CupertinoDatePicker(
                      initialDateTime: providerr!.date,
                      onDateTimeChanged: (value) {
                        providerr!.changeDate(value);
                      },
                      // maximumDate: DateTime(2001),
                      // maximumYear: 2001,
                      // minimumDate: DateTime(2050),
                      // minimumYear: 2050,
                      backgroundColor: CupertinoColors.white,
                    ),
                  ),
                );
              },
              child: const Icon(CupertinoIcons.calendar),
            ),
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
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 110),
              Row(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Contact",
                      style:
                          TextStyle(color: CupertinoColors.black, fontSize: 30),
                    ),
                  ),
                  const Spacer(),
                  Text(
                      'Time:- ${providerr!.time!.hour}:${providerr!.time!.minute}'),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: 200,
                            child: CupertinoTimerPicker(
                              mode: CupertinoTimerPickerMode.hm,
                              backgroundColor: CupertinoColors.white,
                              onTimerDurationChanged: (value) {
                                List<String> l1 = value.toString().split(':');
                                TimeOfDay? t1 = TimeOfDay(
                                  hour: int.parse(l1[0]),
                                  minute: int.parse(l1[1]),
                                );
                                providerr!.changeTime(t1);
                              },
                              initialTimerDuration: Duration(
                                hours: providerr!.time!.hour,
                                minutes: providerr!.time!.minute,
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const Icon(CupertinoIcons.time),
                  ),
                ],
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
                      Navigator.pushNamed(context, 'infoIos');
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
                      Navigator.pushNamed(context, 'infoIos');
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
                      Navigator.pushNamed(context, 'infoIos');
                    },
                    child: const Text(
                      'Anna Haro',
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                  ),
                  const Divider(thickness: 1),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'infoIos');
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
                      Navigator.pushNamed(context, 'infoIos');
                    },
                    child: const Text(
                      'David Taylor',
                      style: TextStyle(color: CupertinoColors.black),
                    ),
                  ),
                  const Divider(thickness: 1),
                  const SizedBox(height: 15),
                  const Text(
                    'V',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Divider(thickness: 1),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'infoIos');
                    },
                    child: const Text(
                      'Vivek',
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
                      Navigator.pushNamed(context, 'infoIos');
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
