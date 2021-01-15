import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Turf extends StatefulWidget {
  @override
  _TurfState createState() => _TurfState();
}

class _TurfState extends State<Turf> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body:ListView(
            children: <Widget>[
                Container(
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            autoPlay: false,
          ),
          items: [
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
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, top: 10),
                                child: Text("Universal Sports Arena",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                ),
                              ),
                  ],
        ),
             ),
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
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, top: 10),
                                child: Text("Universal Sports Arena",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                ),
                              ),
                  ],
        ),
             ),
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
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, top: 10),
                                child: Text("Universal Sports Arena",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                ),
                              ),
                  ],
        ),
             ),
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
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0, top: 10),
                                child: Text("Universal Sports Arena",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                ),
                              ),
                  ],
        ),
             ),
          ],
        ),
      ),
          Row(
              children:<Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 10, top: 15 ),
               child:Text("Starting from Rs 700/Hr"),
                ),
                Padding(
                padding: EdgeInsets.only(left: 100),
               child:Container(
                   color: Colors.yellow,
                   width: 40,
                   height: 20,
                   child:Row(
                       children:<Widget>[
                           Text("4.5"),
                           Icon(Icons.star,
                           size: 12,
                     ),
                       ],
                   ),
               ),
                ),
              ],
          ),
          Padding(
              padding: EdgeInsets.only(left: 10, top: 15),
               child:Text("Facilities",
               style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 20,
               ),
          ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
               child:Row(
                   children: <Widget>[
               Container(
                   width: 150,
                   color:Colors.grey[600],
                   child:Row(
                       children: <Widget>[
                           ClipOval(
        child: Container(
          height: 50,
          width: 50,
          color: Colors.grey.shade200,
          child: Image.asset(
            'assets/images/water.png',
            width: 50.0,
            height: 50.0,
            fit: BoxFit.contain,
          ),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(left: 7),
      child:Text("Drinking Water"),
      ),
                           
                       ],
                   ),
               ),
               Padding(
                   padding: EdgeInsets.only(left: 20),
               child:Container(
                   width: 150,
                   color: Colors.grey[600],
                   child:Row(
                       children: <Widget>[
                           ClipOval(
        child: Container(
          height: 50,
          width: 50,
          color: Colors.grey.shade200,
          child: Image.asset(
            'assets/images/dressing-room.png',
            width: 50.0,
            height: 50.0,
            fit: BoxFit.contain,
          ),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(left: 5),
      child:Text("Dressing Room"),
      ),
                           
                       ],
                   ),
               ),
               ),
                   ],
               ),
          ), 
          Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
               child:Row(
                   children: <Widget>[
               Container(
                   width: 150,
                   color: Colors.grey[600],
                   child:Row(
                       children: <Widget>[
                           ClipOval(
        child: Container(
          height: 50,
          width: 50,
          color: Colors.grey.shade200,
          child: Image.asset(
            'assets/images/parking.png',
            width: 50.0,
            height: 50.0,
            fit: BoxFit.contain,
          ),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(left: 10),
      child:Text("Parking"),
      ),
                           
                       ],
                   ),
               ),
               Padding(
                   padding: EdgeInsets.only(left : 20),
               child:Container(
                   width: 150,
                   color: Colors.grey[600],
                   child:Row(
                       children: <Widget>[
                           ClipOval(
        child: Container(
          height: 50,
          width: 50,
          color: Colors.grey.shade200,
          child: Image.asset(
            'assets/images/toilet.png',
            width: 50.0,
            height: 50.0,
            fit: BoxFit.contain,
          ),
        ),
      ),
      Padding(
          padding: EdgeInsets.only(left: 10),
      child:Text("Toilet"),
      ),
                           
                       ],
                   ),
               ),
               ),
                   ],
               ),
          ), 
          Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child:Text("Location",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
          ),
          ),
          ),
            ],
        ),
    );
  }
}