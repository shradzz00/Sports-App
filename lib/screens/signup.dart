import 'package:flutter/material.dart';
import 'package:spozit/screens/tab-screen.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
       children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(top: 100.0,right: 210),
            child: Text("Spozit",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 40,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 45),
            child: TextFormField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Name',
    icon: Icon(Icons.person_outline),
  ),
),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 45),
            child: TextFormField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Phone',
    icon: Icon(Icons.phone),
  ),
),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 45),
            child: TextFormField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Email',
    icon: Icon(Icons.mail),
  ),
),
          ), 
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 45),
            child: TextFormField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Password',
    icon: Icon(Icons.lock),
  ),
),
          ),  
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 10),
            child: Container(
              width: 330,
              height: 80,
              child: RaisedButton(
                color: Colors.blueAccent,
                child: Text(
                  "Signup",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Verify()),
  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:15.0),
            child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left:80.0),
        child: Divider(
          thickness: 1,
          color: Color(0xff818181),
        ),
      ),
    ),
    SizedBox(width: 10),
    Text(
      'or',
      style: TextStyle(color: Color(0xff818181), fontWeight: FontWeight.w500),
    ),
    SizedBox(width: 10),
    Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right:80.0),
        child: Divider(
          thickness: 1,
          color: Color(0xff818181),
        ),
      ),
    ),
  ],
),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 50, left: 90),
                
                child: CircleAvatar(
                  child: Image.asset('assets/images/google.jpg'),
                radius: 35.0,
              ),
              ),
            
          Padding(
            padding: const EdgeInsets.only(top: 15.0,right: 50,left:20),
           
            child: CircleAvatar(
             child: Image.asset('assets/images/facebook.png'), 
            radius: 35.0,
            
          ),
          ),
            ],
            ),

       ],
      ),
    );
  }
}
class Verify extends StatefulWidget {
  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(
            children: <Widget>[
                Padding(
            padding: const EdgeInsets.only(top: 100.0,left: 20),
            child: Text("Spozit",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 40,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          Padding(
          padding: EdgeInsets.only(left: 20, top: 10),
          child:Text("We have sent you an otp through message"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 45),
            child: TextFormField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Enter OTP',
  ),
),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 10, right: 10 ),
            child: Container(
              width: 330,
              height: 80,
              child: RaisedButton(
                color: Colors.blueAccent,
                child: Text(
                  "Verify",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TabsScreen()),
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
    );
  }
}