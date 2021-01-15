 Column(
              children: <Widget>[
          Container(
          child: Column(
              children: <Widget>[
                  Row(
                      children: <Widget>[
                          CircleAvatar(

                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 20)
                          child:Text("Smith John"),
                          CircleAvatar(
                              radius: 10,
                              backgroundColor:Colors.blueAccent,
                          ),
                      ],
                  ),

                  Divider(),
              ],
          ),
      ),

      Container(
          child: Column(
              children: <Widget>[
                  Row(
                      children: <Widget>[
                          CircleAvatar(

                          ),
                          Text("Smith John"),
                          CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.blueAccent,
                          ),
                      ],
                  ),

                  Divider(),
              ],
          ),
      ),

              ],
          ),




          Expanded(
                  child:Container(
                      height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
                child: GestureDetector(
                  child: Container(
                      color: selectedIndex == index ? Colors.blue : null,
                      height: 50,
                    child: Center(child: Text('$index', style: TextStyle(color: selectedIndex == index ? Colors.white : Colors.blue, fontSize: 36.0),)),
                  ),
                onTap: () {
            setState(() {
              selectedIndex = index;
            });
          }, 
                ),
              );
      },
    ),
              ),
              ),




              Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right:20 ),
           child: Card(
               shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
               ),
                child: Column(
                    children: <Widget>[
                Row(
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
      padding: EdgeInsets.only(left: 30 ),
      child:Text("Smith John"),
      ),
      Padding(
      padding: EdgeInsets.only(left: 30 ),
      child:Text("12 min ago"),
      ),
                        
                    ],
                ),
                Row(
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
      padding: EdgeInsets.only(left: 30 ),
      child:Text("Smith John"),
      ),
      Padding(
      padding: EdgeInsets.only(left: 30 ),
      child:Text("12 min ago"),
      ),
                        
                    ],
                ),
                Row(
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
      padding: EdgeInsets.only(left: 30 ),
      child:Text("Smith John"),
      ),
      Padding(
      padding: EdgeInsets.only(left: 30 ),
      child:Text("12 min ago"),
      ),
                        
                    ],
                ),

                    ],
                ),
            ),
            ),


            ClipOval(
        child: Container(
          height: 50,
          width: 50,
          color: Colors.grey.shade200,
          child: Image.asset(
            'assets/images/team.png',
            width: 50,
            height: 50,
            fit: BoxFit.contain,
          ),
        ),
      ),
      
        Row(
                        children: <Widget>[
                            Padding(
                            padding: EdgeInsets.only(right: 20, top: 10),
                          child:Container(
                            color: Colors.grey[300],
                            child: Column(
                              children: <Widget>[
                                Text("128"),
                                Text("Followers")
                              ],
                            ),
                          ),
                            ),
                          Container(
                            color: Colors.grey[300],
                            child: Column(
                              children: <Widget>[
                                Text("23"),
                                Text("Following"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                          children: <Widget>[
                              Container(
                                  color: Colors.blue[100],
                                  child: Center(
                                      child: Text("Follow"),
                                  ),
                              ),
                              Container(
                                   color: Colors.blue[100],
                                  child: Center(
                                      child: Text("Contact"),
                                  ),
                              ),
                          ],
                      ),