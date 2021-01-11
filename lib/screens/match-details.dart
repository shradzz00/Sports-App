import 'package:flutter/material.dart';
import 'package:spozit/screens/tab-screen.dart';

class MatchDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Match Details'),
            leading: Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TabsScreen()),
  );
        },
          );
    },
            ),
          ),
          body: ListView(
              children: <Widget>[
                  Padding(
                  padding: EdgeInsets.only(left: 20,right: 20, top: 20 ),
                  child:Card(
                      color: Colors.grey[300],
                      child: Column(
                          children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 15),
                              child:Row(
                                  children: <Widget>[
                                      ClipOval(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.grey.shade200,
          child: Image.asset(
            'assets/images/team.png',
            width: 100.0,
            height: 100.0,
            fit: BoxFit.contain,
          ),
        ),
      ), 
      Column(
          children:<Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 30),
      child:Text("Gujarat Lions",
      style: TextStyle(
          fontSize: 22,
          color: Colors.orange,
      ),
      ),
              ),
                              Container(
                                  width: 80,
                                  height: 20,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(16.0),
                                                  color: Colors.grey[200],
                                              ),
                                              child: Center(
                                              child:Text("Beginner"),
                                          ),
                              ),
          ],
      ),
                                  ],
                              ),
                              ),
                              Padding(
                              padding: EdgeInsets.only(left:10,right: 10, top: 10 ),
                  child:Card(
                           color: Colors.grey[500],
                           child: Column(
                               children: <Widget>[
                                   Padding(
                                   padding: EdgeInsets.only(left: 30, top: 20),
                                    child:IntrinsicHeight(
        child: Row(
          children: <Widget>[
                                   Column(
              children: <Widget>[
                Text(
                  'Hosted By',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'Sports',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'Date',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'Time',
                  style: TextStyle(fontSize: 17),
                ),
                Padding(
                padding: EdgeInsets.only(bottom: 50 ),
                child:Text(
                  'Location',
                  style: TextStyle(fontSize: 17),
                ),
                ),
              ],
            ),
            // This is your divider
            Container(
              width: 2,
              height: double.infinity,
              color: Colors.black,
              margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10 ),
            ),
            Column(
              children: <Widget>[
                Text(
                  'Dwen Brigth',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  '7 A Side',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  '1 Jan, 2020 ',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  '6:00 AM to 7:00 AM',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'Gandhinagar',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ],
        ),
      ),
                                   ),
                               ],
                           ),
                          ),
                      ),
                          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 10),
            child: Container(
              width: 250,
              height: 50,
              child: RaisedButton(
                color: Colors.blueAccent,
                child: Text(
                  "Join",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
                },
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
                          ],
                      ),
                  ),
                  ),
              ],
          ),
        );
  }
}