import 'package:flutter/material.dart';
import 'package:spozit/screens/signup.dart';
import 'package:spozit/screens/tab-screen.dart';
import 'package:splashscreen/splashscreen.dart';

class MyApps extends StatefulWidget {
  @override
  _MyAppsState createState() => new _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  @override
  Widget build(BuildContext context) {
    return  SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Login(),
      title:  Text('Spozit',
      style:  TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40.0,
        color: Colors.blueAccent,
        fontStyle: FontStyle.italic,
      ),),
      backgroundColor: Theme.of(context).primaryColor,
      photoSize: 150.0,
    );
  }
}


class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 250.0, left: 100),
            child: Text(
              "Spozit",
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 50,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 110.0),
            child: Text(
              "Boost Your Game",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90.0, left: 110),
            child: Container(
              width: 180,
              height: 50,
              child: RaisedButton(
                color: Colors.blueAccent,
                child: Text(
                  "Join Us",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SignUp()),
  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 110),
            child: Container(
              width: 180,
              height: 50,
              child: RaisedButton(
                color: Colors.grey[200],
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Logins()),
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
class Logins extends StatelessWidget {
  const Logins({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 150.0,right: 230),
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
            padding: const EdgeInsets.only(left: 30.0, top: 50),
            child: TextFormField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Email',
    icon: Icon(Icons.mail),
  ),
),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 50),
            child: Container(
             child:TextFormField(
  decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Password',
    icon: Icon(Icons.lock),
  ),
),
          ),
           ),
          Padding(
            padding: const EdgeInsets.only(left: 190.0, top: 10),
            child: FlatButton(
              onPressed: () {},
              child: Text("Forget Password?",
              style: TextStyle(
                color: Colors.grey,
              ),
              ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 10),
            child: Container(
              width: 330,
              height: 80,
              child: RaisedButton(
                color: Colors.blueAccent,
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
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
          Padding(
            padding: const EdgeInsets.only(top:20.0),
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
                padding: const EdgeInsets.only(top: 40.0, right: 50, left: 90),
                
                child: CircleAvatar(
                  child: Image.asset('assets/images/google.jpg'),
                radius: 30.0,
            
              ),
              ),
            
          Padding(
            padding: const EdgeInsets.only(top: 40.0,right: 50,left:20),
            
            child: CircleAvatar(
              child: Image.asset('assets/images/facebook.png'),
            radius: 30.0,
            
          ),
          ),
            ],
            ),
        ],
      ),
    );
  }
}

