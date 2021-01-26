import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TeamDetails extends StatefulWidget {
  @override
  _TeamDetailsState createState() => _TeamDetailsState();
}

class _TeamDetailsState extends State<TeamDetails> {
    int  _index = 0;

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
                  "Team",
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
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Stack(
              children:<Widget>[ 
                  Padding(
                      padding: EdgeInsets.only(top: 20),

      child:Card(
                color: Theme.of(context).primaryColorLight,
                child: Column(
                        children: <Widget>[
                            
                            Padding(
                                padding: EdgeInsets.only(top: 60),
                            child:Text("Gujarat Lions",
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                            ),
                            ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 240, top: 10),
                            child:Text("Level 2"),
                            ),

                            Padding(
              padding: EdgeInsets.only(top: 15, left: 10),
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
            padding: const EdgeInsets.only(top: 60.0, left: 10),
            child: Container(
              width: 330,
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
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 180, top: 15),
              child:Text("Achievements",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
              ),
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
                                      Image.asset('assets/images/ball.jpg')),
                                      Text("Man of the Match "),
                                      Padding(
                                      padding: EdgeInsets.only(left: 10, right: 5),
                                      child:Text("qwertyuiopasdfghjklzxcvbnm"),
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
          padding: EdgeInsets.only(left: 10, top: 10, right: 200 ),
      child:Text("Statistics",
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
      ),
      ),
      ),
      Padding(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          child: Card(
              color: Colors.white,
              
          ),
      ),
                        ],
                ),
      ),
                  ),
      Positioned(
      top: .0,
      left: .0,
      right: .0,
      child: Center(
      child: CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('assets/images/team.png'),
      ),
      ),
      ),
              ],
          ),
           ],
        ),
    );
  }
}