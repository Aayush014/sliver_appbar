import 'package:flutter/material.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            toolbarHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "                Space Bar",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              background: Image.asset("Assets/bg.jpg",fit: BoxFit.cover,),
            ),
          ),
          SliverList.builder(
            itemCount: colors.length,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.only(top: 10,),
              height: 150,
              width: double.infinity,
              color: colors[index],
            ),
          )
        ],
      ),
    );
  }
}


List colors = [
  Colors.red,
  Colors.purple,
  Colors.green,
  Colors.orange,
  Colors.yellow,
  Colors.cyanAccent,
  Colors.pink,
];