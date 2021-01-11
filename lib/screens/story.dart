import 'package:flutter/material.dart';
import 'package:spozit/screens/profile.dart';
import 'package:spozit/screens/tab-screen.dart';

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Container(
          child: Column(
        children: <Widget>[
            Padding(
            padding: EdgeInsets.only(top: 30, left: 10),
            child:Row(
                children:<Widget>[

      IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TabsScreen()),
  );
        },
          ),

            Padding(
                padding: EdgeInsets.only(left: 230),
            child:Container(
                child: Row(
                    children: <Widget>[
                        Icon(Icons.visibility),
                        Text("34"),
                    ],
                ),
            ),
            ),
                ],
            ),
            ),
            
            Center(
                child: Container(
                                      width:300,
                                      height:300,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: AssetImage('assets/images/feed.jpg'),
            fit: BoxFit.fitWidth,

                                                  ),
                                              ),
            ),
            ),
            Expanded(
            child:DraggableScrollableSheet(
            initialChildSize: 0.4,
            minChildSize: 0.2,
            maxChildSize: 0.8,
            builder: (BuildContext context, myscrollController) {
              return Container(
                  color: Colors.white,
                decoration: BoxDecoration(
    
   borderRadius: BorderRadius.all(Radius.circular(20)),
 ),
                child: ListView.builder(
                  controller: myscrollController,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        title: Text(
                      'Smith John',
                      style: TextStyle(color: Colors.black54),
                    ),
                    leading: CircleAvatar(),
                      trailing: Text(" 12 min ago"),
                    );
                  },
                ),
              );
            },
          ),
            ),
            
        ],
      ),
      ),
    );
  }
}