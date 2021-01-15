import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
            Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20),
            child: Row(
              children: <Widget>[
                Text(
                  "Feed",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150.0),
                  child: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.mail),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 15,right: 10 ),
      child:Card(
          color: Colors.grey[700],
          child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Smith John'),
          leading: CircleAvatar(),
          trailing: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Text("3")
          ),
          tileColor: selectedIndex == index ? Colors.blue : null,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        );
      },
    ),
      ),
              ),
          ),
        ],
      ),
    );
  }
}