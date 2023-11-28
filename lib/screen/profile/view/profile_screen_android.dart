import 'package:flutter/material.dart';

class ProfileScreenAndroid extends StatefulWidget {
  const ProfileScreenAndroid({Key? key}) : super(key: key);

  @override
  State<ProfileScreenAndroid> createState() => _ProfileScreenAndroidState();
}

class _ProfileScreenAndroidState extends State<ProfileScreenAndroid> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: const Icon(Icons.facebook),
          centerTitle: true,
          title: const Text(
            'Facebook',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.purple.shade300,
          actions: const [
            Icon(Icons.search),
          ],
          expandedHeight: 200,
          floating: true,
          pinned: true,
          flexibleSpace: const FlexibleSpaceBar(
            background: Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.amberAccent,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              return ListTile(
                title: Text("$index"),
              );
            },
            childCount: 15,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 200,
            child: GridView.builder(
              itemCount: 50,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.black,
                  margin: EdgeInsets.all(5),
                );
              },
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListTile(
                title: Text("$index"),
              );
            },
            childCount: 15,
          ),
        ),
      ],
    );
  }
}
