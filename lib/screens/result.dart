import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body:ListView(
            children: <Widget>[
                 Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20),
                child:Text(
                  "Result",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                 ),
                 Padding(
                     padding: EdgeInsets.only(left: 20, right: 20, top: 10 ),
                 child:Card(
                     color: Theme.of(context).primaryColorLight,
                     child: Column(
                         children: <Widget>[
                             Row(
                                 children: <Widget>[
                                     ClipOval(
        child: Container(
          height: 80,
          width: 80,
          color: Colors.grey.shade200,
          child: Image.asset(
            'assets/images/team.png',
            width: 80.0,
            height: 80.0,
            fit: BoxFit.contain,
          ),
        ),
      ),
      Padding(
      padding: EdgeInsets.only(left: 20),
      child:Text("Gujarat Lions",
      style: TextStyle(
          color: Colors.orange,
          fontSize: 15,
          fontWeight: FontWeight.bold,
      ),
      ),
      ),
      Padding(
      padding: EdgeInsets.only(left: 80),
      child:Text("5",
      style: TextStyle(
          fontWeight: FontWeight.bold,
      ),
      ),
      ),
                                 ],
                                 
                             ),
                             Padding(
                             padding: EdgeInsets.only(left: 30),
                             child:Row(
                                 children: <Widget>[
                                     Text("VS"),
                                     Divider(),
                                 ],
                             ),
                             ),
                              Row(
                                 children: <Widget>[
                                     ClipOval(
        child: Container(
          height: 80,
          width: 80,
          color: Colors.grey.shade200,
          child: Image.asset(
            'assets/images/team1.jpg',
            width: 80.0,
            height: 80.0,
            fit: BoxFit.contain,
          ),
        ),
      ),
      Padding(
      padding: EdgeInsets.only(left: 20),
      child:Text("Delhi Scorpions",
      style: TextStyle(
          color: Colors.indigo,
          fontSize: 15,
          fontWeight: FontWeight.bold,
      ),
      ),
      ),
      Padding(
      padding: EdgeInsets.only(left: 65),
      child:Text("4",
      style: TextStyle(
          fontWeight: FontWeight.bold,
      ),
      ),
      ),
                                 ],
                                 
                             ),
                             
                         ],
                     ),
                 ),
                 ),

                     Padding(
                              padding: EdgeInsets.only(left:10,right: 10, top: 10 ),
                  child:Card(
                           color: Theme.of(context).primaryColorLight,
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
              margin: const EdgeInsets.only(right: 10, left: 10, bottom: 20 ),
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
                          padding: EdgeInsets.only(left: 20, right: 20, top: 10),

                 child:Card(
                     color: Theme.of(context).primaryColorLight,
                     child: Column(
                         children: <Widget>[
                     Row(
                         children: <Widget>[
                             Padding(
                             padding: EdgeInsets.only(left: 20),
                             child:ClipOval(
        child: Container(
          height: 70,
          width: 70,
          color: Colors.grey.shade200,
          child: Image.asset(
            'assets/images/team.png',
            width: 70.0,
            height: 70.0,
            fit: BoxFit.contain,
          ),
        ),
      ),
                             ),
      Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child:Text("VS"),
                     ),
      ClipOval(
        child: Container(
          height: 70,
          width: 70,
          color: Colors.grey.shade200,
          child: Image.asset(
            'assets/images/team1.jpg',
            width: 70.0,
            height: 70.0,
            fit: BoxFit.contain,
          ),
        ),
      ),

                         ],
                     ),
                     Padding(
                     padding: EdgeInsets.only(left: 30, top: 20),
                 child: Row(
                     children:<Widget>[
                         Column(
                             children: <Widget>[
                                 Text("5"),
                                 Text("7"),
                                 Text("2"),
                             ],
                         ),
                         Padding(
                         padding: EdgeInsets.only(left: 20, right: 20),
                         child:Column(
                             children: <Widget>[
                                 Text("Goals"),
                                 Text("Total Shots"),
                                 Text("Tackle"),
                             ],
                         ),
                         ),
                          Padding(
                         padding: EdgeInsets.only(left: 20),
                         child:Column(
                             children: <Widget>[
                                 Text("4"),
                                 Text("8"),
                                 Text("3"),
                             ],
                         ),
                          ),

                     ],
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