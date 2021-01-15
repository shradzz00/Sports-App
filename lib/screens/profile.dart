import 'package:flutter/material.dart';
import 'dart:async';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:spozit/screens/balance.dart';
import 'package:spozit/screens/profile-tpp.dart';
import 'package:spozit/screens/turf-profile.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20),
            child: Row(
              children: <Widget>[
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
                  padding: const EdgeInsets.only(left: 80.0),
                  child: IconButton(
                    icon: Icon(Icons.account_balance_wallet),
                    onPressed: () {
                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Balance()),
  );
                    },
                  ),
                ),
                  
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                    },
                  ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                  },
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
                               decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
                               ),
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
                               decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
                               ),
                            color: Colors.grey[500],
                            child: Column(
                              children: <Widget>[
                                Text("23"),
                                Text("Following"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 30),
            child: Text(
              "Level 2",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 5, left: 10),
          child:Row(
            children: <Widget>[
              LinearPercentIndicator(
                width: 280.0,
                lineHeight: 14.0,
                percent: 0.5,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
              Text("210/500"),
            ],
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 30),
            child: Row(
              children: <Widget>[
                Text(
                  "Statistics",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160.0),
                  child: Text(
                    "View all",
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 10, top: 10 ),
          child:Row(
            children: <Widget>[
                 CircularPercentIndicator(
                      radius: 150.0,
                      lineWidth: 14.0,
                      percent: 0.60,
                      center: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: Center(
                                  child:Text("Matches 10",
                                  style: TextStyle(
                                      color: Colors.black,
                                  ),
                                  maxLines: 2,
                                  ),
                          ),
                      ),
                      progressColor: Colors.blueAccent,
                    ),
                    Padding(
                    padding: EdgeInsets.only(left: 30),
              child:Text("Goals"),
                    ),

                    Padding(
                              padding: EdgeInsets.only(left:20,right: 10 ),
                  child:Card(
                           color: Colors.grey[600],
                           child: Column(
                               children: <Widget>[
                                   Padding(
                                   padding: EdgeInsets.only(left: 10, top: 10),
                                    child:IntrinsicHeight(
        child: Row(
          children: <Widget>[
                                   Column(
              children: <Widget>[
                Text(
                  'Match 3',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'Match 2',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'Match 1',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            // This is your divider
            Container(
              width: 2,
              height: double.infinity,
              color: Colors.black,
              margin: const EdgeInsets.only(right: 10, left: 10),
            ),
            Column(
              children: <Widget>[
                Text(
                  '2',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '1',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '4',
                  style: TextStyle(fontSize: 12),
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
            ],
          ),
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 20),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blueAccent,
                          child: Text(
                            "6",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Matches Won"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 30),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.grey[200],
                          child: Text(
                            "4",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Matches Lost",
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text("Position"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                     decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
                     ),
                    color:Colors.grey[200],
                child: Center(
                    child: Text("Centre Forward"),
              ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 30),
            child: Row(
              children: <Widget>[
                Text(
                  "Achievements",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110.0),
                  child: Text("View all"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 250, // card height
              child: PageView.builder(
                  itemCount: 10,
                  controller: PageController(viewportFraction: 0.7),
                  onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (_, i) {
                    return Transform.scale(
                      scale: i == _index ? 1 : 0.9,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 25.0, left: 30),
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                  height: 150,
                                  child:
                                      Image.asset('assets/images/feeds.jpg')),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                elevation: 2,
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text("Man Of The Match"),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.location_on,
                                            size: 15,
                                          ),
                                          Text(
                                            "Kamrej",
                                            style: TextStyle(
                                              fontSize: 13,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: RaisedButton(
                                              color: Colors.blueAccent,
                                              child: Text(
                                                "Details",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                ),
                                              ),
                                              onPressed: () {},
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    new BorderRadius.circular(
                                                        25.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
