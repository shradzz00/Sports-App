import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:250.0),
            child: Text("Chat with your friends",
            style: TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
