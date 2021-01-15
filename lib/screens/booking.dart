import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import 'package:time_range/time_range.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
    int selectedindex;
    
    var _color = Colors.white;
  int index = 4;
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body:  Column(
        children: <Widget>[
          Card(
            color:  Theme.of(context).primaryColor,  
            child: Column(
              children: <Widget>[
                Card(
                  child: Container(
                    width: 350,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/turf.jpg'),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 10),
                              child: Text(
                                "Universal Sports Arena",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
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
          ),
          Padding(
              padding: EdgeInsets.only(left: 10, right: 250, top: 10 ),
          child:Text("Booking",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
          ),
          ),
          ),
          Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top:10),
          child:Card(
                  color: Colors.grey[500],
                child: Column(
                    children: <Widget>[
                        Padding( 
                    padding: EdgeInsets.only(right: 200,top: 10),
                        child:Text("Date",
                        style:TextStyle(
                         fontWeight:FontWeight.bold,   
                        ),
                        ),
                        ),
                          DatePicker(
                  DateTime.now(),
                  width: 60,
                  height: 80,
                  controller: _controller,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.blueAccent,
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                          ),
                    ],
                ),
              ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 250, top: 20),
          child:Text("Pitch",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          ),
          ),
             Container(
              height: 60, // card height
              child: PageView.builder(
                  itemCount: 9,
                  controller: PageController(viewportFraction: 0.3),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        child: Card(
                            color: selectedindex == index ? Colors.blue : null,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                  child: Text('${index + 1}s'),
                              ),
                        ),
                        onTap: () {
            setState(() {
               selectedindex = index;
            });
          },
                    );
                  }
              ),
             ),
             Padding(
                 padding: EdgeInsets.only(top: 15),
         
         child:TimeRange(
    fromTitle: Text('From', style: TextStyle(fontSize: 18, color: Colors.grey),),
    toTitle: Text('To', style: TextStyle(fontSize: 18, color: Colors.grey),),
    titlePadding: 20,
    textStyle: TextStyle(fontWeight: FontWeight.normal, color:  Theme.of(context).accentColor),
    activeTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).accentColor ),
    borderColor: Theme.of(context).accentColor,
    backgroundColor: Colors.transparent,
    activeBackgroundColor: Colors.blueAccent,
    firstTime: TimeOfDay(hour: 6, minute: 00),
    lastTime: TimeOfDay(hour: 22, minute: 00),
    timeStep: 30,
    timeBlock: 30,
    onRangeCompleted: (range) => setState(() => print(range)),
  ),
             ),
             Padding(
                 padding: EdgeInsets.only(top: 20, left: 10 ),
             child:Row(
                 children: <Widget>[
                     Column(
                         children: <Widget>[
                             Text("Total",
                             style: TextStyle(
                                 fontWeight: FontWeight.bold,
                             ),
                             ),
                             Text("Rs 1200",
                             style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20,
                             ),
                             ),
                         ],
                     ),
                     Padding(
                         padding: EdgeInsets.only(left: 100),
                     child:Container(
            width: 150,
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
                  showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                elevation: 16,
                child: Container(
                    color: Colors.white,
                  height: 600.0,
                  width: 360.0,
                  child: Padding(
                      padding: EdgeInsets.only(top: 20),
                  child: Column(
                      children: <Widget>[
                          Text("Spozit",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                          ),
                          ),
                          Text("Universal Sports Arena",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                          ),
                          ),
                          Divider(
                              thickness:5,
                            
                          ),
                          Text("Person name",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[800],
                          ),
                          ),
                          Text("Jenish Dhanani",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                          ),
                          ),
                          Padding(
                          padding: EdgeInsets.only(top: 8),
                          child:Text("Date",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[800],
                          ),
                          ),
                          ),
                          Text("1st Jan, 2021",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                          ),
                          ),
                          Padding(
                          padding: EdgeInsets.only(top: 8),
                          child:Text("Pitch",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[800],
                          ),
                          ),
                          ),
                          Text("5's",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                          ),
                          ),
                          Padding(
                          padding: EdgeInsets.only(top: 8),
                          child:Text("Time",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[800],
                              
                          ),
                          ),
                          ),
                          Text("1:00 PM to 3:00 PM",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                          ),
                          ),
                          Divider(
                              height: 15,
                              thickness: 5,
                          ),
                          Container(
                                      width:300,
                                      height:300,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: AssetImage('assets/images/qrcode.png'),
            fit: BoxFit.fitWidth,
          ),
                                                  ),
                          ),
                          Row(
                              children:<Widget>[
                          
                          IconButton(
                              icon: Icon(Icons.share),
                              onPressed: () {},
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 170),
                          child:IconButton(
                              icon: Icon(Icons.info),
                              onPressed: () {},
                          ),
                          ),
                              ],
                          ),

                      ],
                  ),
                  ),
                ),
              );
            },
                  );
              },
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
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
  