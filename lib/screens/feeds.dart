import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:spozit/screens/message.dart';
import 'package:spozit/screens/card.dart';
import 'package:spozit/screens/story.dart';
import 'package:spozit/screens/profile-tpp.dart';
import 'package:spozit/screens/turf-profile.dart';



class Feeds extends StatefulWidget {
  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
     int selectedIndex;
     int _index = 0;
    List cards = new List.generate(4, (i) => new CustomContainer()).toList();
    List card = new List.generate(4, (i) => new CustomContainers()).toList();

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
                    onPressed: () {
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.mail),
                  onPressed: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Message()),
  );
                  },
                ),
              ],
            ),
            ),
           
            Container(

              height: 100, // card height
              child: PageView.builder(
                  itemCount: 10,
                  controller: PageController(viewportFraction: 0.2),
                  onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (_, i) {
                    return Transform.scale(
                      scale: i == _index ? 1 : 0.9,
                      child:  GestureDetector(
            child:CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 1.0,
                  center: CircleAvatar(
                      child: IconButton(
                          icon: Icon(Icons.add),
                           ),
                  ),
                  progressColor: Colors.grey,

                ),
                onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Story()),
  );


                },
                
            ),
                    );
                  }
              ),
            ),

          
         Column(
             children: cards,
         ),
         Column(
             children: card,
         ),
         
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[

Padding(
              padding: EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Container(
              width: 350,
              height: 300,
                          child : Column(
                              children: <Widget>[
                                  Row(
                                      children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(left: 20, top: 10),
                                          child:ClipOval(
        child: Container(
          height: 50,
          width: 50,
          color: Colors.grey.shade200,
          child: Image.asset(
            'assets/images/team.png',
            width: 50.0,
            height: 50.0,
            fit: BoxFit.contain,
          ),
        ),
      ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: FlatButton(
                                          child:Text("Jarvis Mathew"),
                                          onPressed: (){
                                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Profiletpp()),
  );

                                          },
                                  ),
                                  ),
                                          Padding(
                                              padding: EdgeInsets.only(left: 60),
                                          child:Text("12 min ago"),
                                          ),
                                      ],
                                  ),
                                  Container(
                                      width:300,
                                      height:200,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: AssetImage('assets/images/feed.jpg'),
            fit: BoxFit.fitWidth,

                                                  ),
                                              ),
                                  ),
                                              Row(
                                                  children: <Widget>[
                                                      IconButton(
                                                          icon: Icon(Icons.favorite),
                                                          onPressed: () {},
                                                      ),
                                                      IconButton(
                                                          icon: Icon(Icons.chat),
                                                          onPressed: () {},

                                                      ),
                                                      IconButton(
                                                          icon: Icon(Icons.send),
                                                          onPressed: () {},
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets.only(left: 150 ),
                                                      child: IconButton(
                                                          icon: Icon(Icons.more_vert),
                                                          onPressed: () {},
                                                      ),
                                                      ),

                                                  ],

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

class CustomContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[

Padding(
              padding: EdgeInsets.only(top: 25, left: 10, right: 10),
          child: Container(
              width: 350,
              height: 300,
                          child : Column(
                              children: <Widget>[
                                  Row(
                                      children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(left: 20, top: 10),
                                          child:ClipOval(
        child: Container(
          height: 50,
          width: 50,
          color: Colors.grey.shade200,
          child: Image.asset(
            'assets/images/team.png',
            width: 50.0,
            height: 50.0,
            fit: BoxFit.contain,
          ),
        ),
      ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: FlatButton(
                                          child:Text("Turf profile"),
                                          onPressed: (){
                                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TurfProfile()),
  );

                                          },
                                  ),
                                  ),
                                          Padding(
                                              padding: EdgeInsets.only(left: 80),
                                          child:Text("12 min ago"),
                                          ),
                                      ],
                                  ),
                                  Container(
                                      width:300,
                                      height:200,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: AssetImage('assets/images/feed.jpg'),
            fit: BoxFit.fitWidth,

                                                  ),
                                              ),
                                  ),
                                              Row(
                                                  children: <Widget>[
                                                      IconButton(
                                                          icon: Icon(Icons.favorite),
                                                          onPressed: () {},
                                                      ),
                                                      IconButton(
                                                          icon: Icon(Icons.chat),
                                                          onPressed: () {},

                                                      ),
                                                      IconButton(
                                                          icon: Icon(Icons.send),
                                                          onPressed: () {},
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets.only(left: 100 ),
                                                      child: IconButton(
                                                          icon: Icon(Icons.more_vert),
                                                          onPressed: () {},
                                                      ),
                                                      ),

                                                  ],

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