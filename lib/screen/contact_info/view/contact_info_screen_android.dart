import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/contact_info_provider.dart';

class ContactInfoScreenAndroid extends StatefulWidget {
  const ContactInfoScreenAndroid({Key? key}) : super(key: key);

  @override
  State<ContactInfoScreenAndroid> createState() =>
      _ContactInfoScreenAndroidState();
}

class _ContactInfoScreenAndroidState extends State<ContactInfoScreenAndroid> {
  ContactInfoProvider? providerw;
  ContactInfoProvider? providerr;

  @override
  Widget build(BuildContext context) {
    providerr = context.read<ContactInfoProvider>();
    providerw = context.watch<ContactInfoProvider>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Hello",
                  // "Name: ${c1.name}",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            const Divider(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "+91 8160032116}",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const Text("Mobile | India")
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.call),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "admin@gmail.com",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const Text("Email")
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blueGrey),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.email),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Text(
                        "Video Call",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.video_call),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Text(
                        "WhatsApp Call",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.call_sharp),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Text(
                        "Gujarat",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.redAccent),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.location_on),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        'Date:- ${providerr!.date?.day}/${providerr!.date?.month}/${providerr!.date?.year}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () async {
                          DateTime? d1 = await showDatePicker(
                            context: context,
                            initialDate: providerr!.date!,
                            firstDate: DateTime(2001),
                            lastDate: DateTime(2050),
                          );
                          providerr!.changeDate(d1!);
                        },
                        icon: const Icon(Icons.calendar_month),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Time:- ${providerr!.time!.hour}:${providerr!.time!.minute}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () async {
                          TimeOfDay? d1 = await showTimePicker(
                            context: context,
                            initialTime: providerr!.time!,
                          );
                          providerr!.changeTime(d1!);
                        },
                        icon: const Icon(Icons.watch_later),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
