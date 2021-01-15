import 'package:flutter/material.dart';
import 'package:spozit/screens/team-details.dart';

class Teams extends StatefulWidget {
  Teams({Key key}) : super(key: key);

  @override
  _TeamsState createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  List card = new List.generate(10, (i) => new CustomCard()).toList();
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
                  "Team",
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
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
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
          Padding(
              padding: EdgeInsets.only(top: 30),
          child:Column(
            children: card,
          ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TeamDetails()),
  );

        },
   child: Card(
       color: Theme.of(context).primaryColor,
        elevation: 5,
      child: Column(
          children: <Widget>[
      Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.grey[600],
                      ),
                  
      child: Row(
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
            children: <Widget>[
              Text("Gujarati Lion",
              style: TextStyle(
                  color:Colors.orangeAccent,
                  fontSize: 25,
              )
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.location_on,
                  size: 15,
                  ),
                  Text("Sarthana Jakatnaka"),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.timer,
                  size: 15,
                  ),
                  Text("10/04/2020"),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(left: 170 ),
              child: Row(
                children: <Widget>[
                  Text("Search"),
                  Icon(Icons.arrow_forward_ios,
                  size: 15,
                  ),
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
    );
  }
}
