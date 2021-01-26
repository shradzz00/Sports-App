
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:spozit/screens/booking.dart';
import 'package:spozit/screens/match-details.dart';
import 'package:spozit/screens/turf.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int _index = 0;
    List cards = new List.generate(10, (i) => new CustomCard()).toList();
    int _currentIndex=0;

  List cardList=[
    Item1(),
    Item2(),
    Item3(),
    Item4()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
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
                Column(
                    children:<Widget>[
                        Text(
                  "Spozit",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                            children: <Widget>[
                              Icon(Icons.location_on,
                              size : 12,
                              ),
                              Text("Sarthana Jakatnaka",
                              ),
                            ],
          ),
                    ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
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
          
                CarouselSlider(
              options: CarouselOptions(
                height: 260.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 10),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: cardList.map((card){
                return Builder(
                  builder:(BuildContext context){
                    return Container(
                        color: Theme.of(context).primaryColor,
                      height: MediaQuery.of(context).size.height*0.2,
                      width: MediaQuery.of(context).size.width*1.0,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                      child: Card(
                        color: Theme.of(context).primaryColor,
                        child: card,
                        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
                      ),
                      ),
                      ),
                    );
                  }
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(cardList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Colors.blueAccent : Colors.grey,
                  ),
                );
              }),
            ),
            Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                child: Text(
                  "Events",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: FlatButton(
                  child: Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
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
        padding: EdgeInsets.only(top: 20),
          child:Column(
            children: cards,
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
    MaterialPageRoute(builder: (context) => Turf()),
  );  
        },
    child: Padding(
        padding: EdgeInsets.only(left: 10,right: 10, top: 10),
    child: Card(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
             Container(
        width: 350,
        height: 220,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/turf.jpg'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
                  children: <Widget>[
                            Row(
                              children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, top: 10),
                                child: Text("Universal Sports Arena",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Icon(Icons.star_border,
                                size: 20,
                                color: Colors.amber,
                                ),
                              ),
                              Icon(Icons.star,
                              size: 20,
                              color: Colors.amber,
                              ),
                              Icon(Icons.star,
                              size: 20,
                              color: Colors.amber,
                              ),
                              Icon(Icons.star,
                              size: 20,
                              color: Colors.amber,
                              ),

                            ],),
                          Row(
                            children: <Widget>[
                              Icon(Icons.location_on,
                              color: Colors.white,
                              size : 12,
                              ),
                              Text("Sarthana Jakatnaka",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:130.0),
                                child: Icon(Icons.person_outline,
                                color: Colors.amberAccent,
                                ),
                              ),
                              Text("(45)",
                              style: TextStyle(
                                color:Colors.amber,
                              ),
                              ),
                            ],

                          ),
                 
                          
                          Padding(
                            padding: const EdgeInsets.only(top: 130.0),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 20, left: 8),
                                  child: Text(
                                    "Starting @ Rs.700/Hr",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
              width: 110,
              height: 30,
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
          ],
        ),
    ),
    ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
          color: Colors.blueAccent,
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
        child:Row(
children: <Widget>[
  Container(
   width:155,
   height: 300,
   decoration: BoxDecoration(
       image: DecorationImage(
     image: AssetImage('assets/images/a.png'),
       ),
   ),
  ),
  Padding(
  padding: EdgeInsets.only(right: 10, top: 20 ),
  child: Column(
      children: <Widget>[
  Text("Cricket",
   style: TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize: 28,
                ),
  ),
  Text("offers",
   style: TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize: 28,
                ),
  ),
                Padding(
                padding: EdgeInsets.only(top:110),
                child:Row(
                    children: <Widget>[
                        
                    Text("Learn More",
                        style: TextStyle(
                    color: Colors.white,
                        ),
                 ),
                        
                        Icon(Icons.arrow_forward_ios,
                        color:Colors.white,
                        size: 10,
                        ),
                    ],
                ),
                ),
      ],
  ),
  ),

],
    ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Card(
          color: Colors.yellow,
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
        child:Row(
children: <Widget>[
  Container(
   width:155,
   height: 300,
   decoration: BoxDecoration(
       image: DecorationImage(
     image: AssetImage('assets/images/b.png'),
       ),
   ),
  ),
  Padding(
  padding: EdgeInsets.only(right: 10, top: 20 ),
  child: Column(
      children: <Widget>[
  Text("Cricket",
   style: TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize: 28,
                ),
  ),
  Text("offers",
   style: TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize: 28,
                ),
  ),
                Padding(
                padding: EdgeInsets.only(top:110),
                child:Row(
                    children: <Widget>[
                        
                    Text("Learn More",
                        style: TextStyle(
                    color: Colors.white,
                        ),
                 ),
                        
                        Icon(Icons.arrow_forward_ios,
                        color:Colors.white,
                        size: 10,
                        ),
                    ],
                ),
                ),
      ],
  ),
  ),

],
    ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
          color: Colors.green,
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
        child:Row(
children: <Widget>[
  Container(
   width:155,
   height: 300,
   decoration: BoxDecoration(
       image: DecorationImage(
     image: AssetImage('assets/images/c.png'),
       ),
   ),
  ),
  Padding(
  padding: EdgeInsets.only(right: 10, top: 20 ),
  child: Column(
      children: <Widget>[
  Text("Cricket",
   style: TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize: 28,
                ),
  ),
  Text("offers",
   style: TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize: 28,
                ),
  ),
                Padding(
                padding: EdgeInsets.only(top:110),
                child:Row(
                    children: <Widget>[
                        
                    Text("Learn More",
                        style: TextStyle(
                    color: Colors.white,
                        ),
                 ),
                        
                        Icon(Icons.arrow_forward_ios,
                        color:Colors.white,
                        size: 10,
                        ),
                    ],
                ),
                ),
      ],
  ),
  ),

],
    ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
          color: Colors.orange,
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child:Row(
children: <Widget>[
  Container(
   width:155,
   height: 300,
   decoration: BoxDecoration(
       image: DecorationImage(
     image: AssetImage('assets/images/d.png'),
       ),
   ),
  ),
  Padding(
  padding: EdgeInsets.only(right: 10, top: 20 ),
  child: Column(
      children: <Widget>[
  Text("Cricket",
   style: TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize: 28,
                ),
  ),
  Text("offers",
   style: TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.bold,
                    fontSize: 28,
                ),
  ),
                Padding(
                padding: EdgeInsets.only(top:90),
                child:Row(
                    children: <Widget>[
                        
                    Text("Learn More",
                        style: TextStyle(
                    color: Colors.white,
                        ),
                 ),
                        
                        Icon(Icons.arrow_forward_ios,
                        color:Colors.white,
                        size: 10,
                        ),
                    ],
                ),
                ),
],
  ),
  ),
],
),
      
    );
  }
}