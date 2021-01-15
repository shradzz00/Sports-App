import 'package:flutter/material.dart';


class Homes extends StatefulWidget {
  @override
  _HomesState createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
    body: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Item: $index'),
          tileColor: selectedIndex == index ? Colors.blue : null,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        );
      },
    ),
    );
  }
}

