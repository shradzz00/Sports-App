import 'package:flutter/material.dart';
import 'package:spozit/screens/profile.dart';
import 'package:spozit/screens/tab-screen.dart';

class Balance extends StatefulWidget {
  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15),
            child: Row(
              children: <Widget>[
                  IconButton(
                                      icon: Icon(Icons.arrow_back_ios),
                                      onPressed: () {
                                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Profile()),
  );
                                      },
                  ),
                Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {},
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 30),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Jenish Dhanai",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                            Padding(
                            padding: EdgeInsets.only(right: 20),
                          child:Container(
                            color: Colors.grey[500],
                            child: Column(
                              children: <Widget>[
                                Text("128"),
                                Text("Followers")
                              ],
                            ),
                          ),
                            ),
                          Container(
                            color: Colors.grey[500],
                            child: Column(
                              children: <Widget>[
                                Text("23"),
                                Text("Following"),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20, left:10, right: 10 ),
          child:Container(
              width: 250,
              height: 30,
            color: Colors.grey[600],
            child: Row(
              children: <Widget>[
                Text("Balance",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 200),
            
                child:Text("Rs 5215",
                style:TextStyle(
                fontWeight: FontWeight.bold,
                ),
                ),
                ),
              ],
            ),
          ),
          ),
          Padding(
          padding: EdgeInsets.only(top: 25, left: 10,right: 10  ),
          child:Container(
            width: 300,
            height: 50,
            child: RaisedButton(
              color: Colors.blueAccent,
              child: Text(
                "Add Balance",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          ),
          ),
          Padding(
          padding: EdgeInsets.only(left: 20,top: 10 ),
          child:Text("Statements",
          style: TextStyle(
              fontWeight: FontWeight.bold,
          ),
          ),
          ),
          Padding(
              padding: EdgeInsets.only(left:30, right: 20),
          child:Card(
            color: Colors.grey[600],
            child: Column(
              children: <Widget>[
                Text("Statement 1"),
                Divider(),
                Text("Statement 2"),
                Divider(),
                Text("Statement 3"),
                Divider(),
                Text("Statement 4"),
                Divider(),
                Text("Statement 5"),
                Divider(),
              ],
            ),
          ),
          ),
        ],
      ),
    );
  }
}
