import 'package:flutter/material.dart';
import 'package:spozit/screens/match-details.dart';
import 'package:spozit/screens/result.dart';


class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
    int _index = 0;
     List cards = new List.generate(10, (i) => new CustomCardss()).toList();
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body:ListView(
            children: <Widget>[
     Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20),
            child: Row(
              children: <Widget>[
                Text(
                  "Spozit",
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
                    icon: Icon(Icons.qr_code_scanner),
                    onPressed: () {
                    },
                  ),
                ),
                  
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left:10, top: 15),
              child: Text("Events",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
              ),
              ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              height: 150, // card height
              child: PageView.builder(
                  itemCount: 10,
                  controller: PageController(viewportFraction: 0.6),
                  onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (_, i) {
                    return Transform.scale(
                      scale: i == _index ? 1 : 0.9,
                      child: Container(
                          width:200,
                        child: Card(
                            color: Theme.of(context).primaryColorLight,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                  children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.only(left:30, top: 15),
                              child:Row(
                                  children: <Widget>[
                                      ClipOval(
        child: Container(
          height: 60,
          width: 60,
          color: Colors.grey.shade200,
          child: Image.asset(
            'assets/images/team.png',
            width: 60.0,
            height: 60.0,
            fit: BoxFit.contain,
          ),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(left: 10),
                                      child:Text("VS"),
      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 15),
                                      child:CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: IconButton(
                                                              icon: Icon(Icons.person),
                                                              onPressed: () {},
                                                          ),
                                      ),
                                      ),
                                  ],
                              ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(left: 10, top: 20),
                              child:Row(
                                  children: <Widget>[
                                      Column(
                                          children: <Widget>[
                                              Row(
                                                  children: <Widget>[
                                                      Icon(Icons.timer,
                                                      size: 10,
                                                      ),
                                                      Text("25 Dec, 2020"),
                                                  ],
                                              ),
                                              Row(
                                                  children: <Widget>[
                                                      Icon(Icons.location_on,
                                                      size: 10,
                                                      ),
                                                      Text("Gandhinagar"),
                                                  ],
                                              ),
                                          ],
                                      ),
                                      Padding(
                                      padding: EdgeInsets.only(left: 10),
                                            child:Container(
              width: 90,
              height: 30,
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
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MatchDetails()),
  );  
                },
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
                                            ), 
                                      ),
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
            Padding(
            padding: EdgeInsets.only(left: 10, top: 15),
            child:Text("Tournaments",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
            ),
            ),
            ),
            Padding(
                padding: EdgeInsets.only(top:20),
            child:Column(
            children: cards,
            ),
            ),
          
            ],
        ),
    );
  }
}

class CustomCardss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Result()),
  );  
        },
    child: Padding(
        padding: EdgeInsets.only(left: 10,right: 10),
    child: Card(
        color: Theme.of(context).primaryColorLight,
        child: Column(
          children: <Widget>[
             Container(
        width: 350,
        height: 220,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ball.jpg'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
             ),
               Padding(
               padding: EdgeInsets.only(right: 140, top: 10),
               child:Text("Lio Premiere League",
               style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 17,
               ),
               ),
               ),
               Padding(
               padding: EdgeInsets.only(right: 110),
               child:Text("qwertyuiopasdfghjklzxcvbnm"),
               ),
               Padding(
               padding: EdgeInsets.only(left:10, top: 10 ),
               child:Row(
                   children: <Widget>[
                       Text("Rs 2500",
                       style: TextStyle(
                       fontWeight: FontWeight.bold,
                       ),
                       ),
                       Padding(
                       padding: EdgeInsets.only(left: 150 ),
                    child:Column(
                        children: <Widget>[
                            Row(
                                children: <Widget>[
                                    Icon(Icons.location_on,
                                    size: 12,
                                    ),
                                    Text("Kamrej"),
                                ],
                            ),
                            Row(
                                children: <Widget>[
                                    Icon(Icons.timer,
                                                      size: 10,
                                                      ),
                                                      Text("25 Dec, 2020"),

                                ],
                            ),
                        ],
                    ),
                       ),
                   ],
               ),
               ),

               Container(
              width: 300,
              height: 30,
              child: RaisedButton(
                color: Colors.blueAccent,
                child: Text(
                  "Join Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MatchDetails()),
  );  
                },
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0),
                ),
              ),
                                            ),
          ],
        ),
    ),
    ),
               );
  }
}