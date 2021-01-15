import 'package:flutter/material.dart';
import 'package:spozit/screens/profile.dart';
import 'package:spozit/screens/tab-screen.dart';
import 'package:spozit/screens/booking.dart';
import 'package:carousel_slider/carousel_slider.dart';



class TurfProfile extends StatefulWidget {
  @override
  _TurfProfileState createState() => _TurfProfileState();
}

class _TurfProfileState extends State<TurfProfile> {
    int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
            Card(
            color: Theme.of(context).primaryColor,
      child: Container(
        width: 350,
        height: 180,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/turf.jpg'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
           borderRadius: BorderRadius.only(
               bottomRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0)),
          
        ),
        child: Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
        child:Text("Universal Sports Arena",
        style: TextStyle(
            color: Colors.white,
            fontSize: 22,
        ),
        ),
        ),
            ),
            ), 

            Stack(
  children: <Widget>[
    Card(
      margin: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
          height: 200,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 45.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                  Padding(
                  padding: EdgeInsets.only(left: 100, top: 10),
                  child:Row(
                      children: <Widget>[
                          Container(
                            color: Colors.grey[500],
                            child: Column(
                              children: <Widget>[
                                Text("128"),
                                Text("Followers")
                              ],
                            ),
                          ),
                          Padding(
                          padding: EdgeInsets.only(left: 20),
                          child:Container(
                            color: Colors.grey[500],
                            child: Column(
                              children: <Widget>[
                                Text("23"),
                                Text("Following"),
                              ],
                            ),
                          ),
                          ),
                        ],
                      ),
                  ),
                       Padding(
                  padding: EdgeInsets.only(left: 60, top: 10),
                  child:Row(
                          children: <Widget>[
                              GestureDetector(
                              child:Container(
                                  width: 100,
                                  height: 30,
                                  color: Colors.blue[200],
                                  child: Center(
                                      child: Text("Follow"),
                                  ),
                              ),
                              onTap: (){},
                              ),
                              GestureDetector(
                              child:Padding(
                              padding: EdgeInsets.only(left: 10),
                              child:Container(
                                  width: 100,
                                  height: 30,
                                   color: Colors.blue[200],
                                  child: Center(
                                      child: Text("Contact"),
                                  ),
                              ),
                              ),
                              onTap: () {},
                              ),
                          ],
                      ),
                       ),
                 Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 10),
            child: Container(
              width: 330,
              height: 50,
              child: RaisedButton(
                color: Colors.blueAccent,
                child: Text(
                  "Book Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Booking()),
  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          Padding(
          padding: EdgeInsets.only(left: 10, top: 20),
          child:Row(
              children: <Widget>[
                  Text("Customer Feedback",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                  Padding(
                  padding: EdgeInsets.only(left: 170 ),
                  child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.0),
                                      color: Colors.yellow,
                                  ),
                                  child: Row(
                                      children: <Widget>[
                                          Text("4.5"),
                                          Icon(Icons.star,
                                          size: 13,
                                          ),
                                      ],
                                  ),
                              ),
                  ),
              ],
          ), 
          ),    
                
              ],
            ),
          )),
    ),
    Positioned(
      top: .0,
      left: .0,
      right: .0,
      child: Center(
        child: CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('assets/images/feed.jpg'),
        ),
      ),
    ),
  ],
),
Padding(
padding: EdgeInsets.only(top: 50),
child:Container(

              height: 150, // card height
              child: PageView.builder(
                  itemCount: 10,
                  controller: PageController(viewportFraction: 0.7),
                  onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (_, i) {
                    return Transform.scale(
                      scale: i == _index ? 1 : 0.9,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0, left: 10),
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                  children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.only(left:10),
                              child:Row(
                                  children: <Widget>[
                                      ClipOval(
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
      Padding(
          padding: EdgeInsets.only(left: 5),
                                      child:Text("Vipul Singhal"),
      ),
                                  ],
                              ),
                                      ),
                                      Card(
                                          color: Colors.grey,
                                          child:Center(
                                              child:Text("abcdefghijklmnopqrstuvwxyzqweryuopasdfgjllzxcvbnm",
                                          ),
                                          ),
                                      ),
                                  ],
                              ),
                        ),
                      ),
                    );
                  },
              ),
),
),
Padding(
padding: EdgeInsets.only(top: 20, left:10 ),
child:Row(
    children: <Widget>[
        Text("Feeds",
        style:TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
        ),
        ),
        Padding(
        padding: EdgeInsets.only(left: 230),
        child:Text("View all"),
        ),
    ],
),
),
Padding(
padding: EdgeInsets.only(top: 20),
child: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            viewportFraction: 0.5,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            autoPlay: false,
          ),
          items: [
              Image.asset('assets/images/feeds.jpg'),
              Image.asset('assets/images/event.jpg'),
              Image.asset('assets/images/event1.jpg'),
              
          ],
        ),
      ),
),
        ],
            ),
                                      
    );
  }
}