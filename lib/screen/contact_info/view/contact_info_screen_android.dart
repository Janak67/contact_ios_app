import 'package:flutter/material.dart';

class ContactInfoScreenAndroid extends StatefulWidget {
  const ContactInfoScreenAndroid({Key? key}) : super(key: key);

  @override
  State<ContactInfoScreenAndroid> createState() => _ContactInfoScreenAndroidState();
}

class _ContactInfoScreenAndroidState extends State<ContactInfoScreenAndroid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Contact Info"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share, color: Colors.white),
            ),
          ],
        ),
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
                  const SizedBox(height: 170),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit,
                            color: Colors.grey, size: 30),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.delete,
                              color: Colors.grey, size: 30)),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.visibility_off,
                            color: Colors.grey, size: 30)
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
