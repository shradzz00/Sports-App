import 'package:flutter/material.dart';
import 'feeds.dart';
import 'profile.dart';
import 'teams.dart';
import 'home.dart';
import 'events.dart';

class TabsScreen extends StatefulWidget {

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': Home(),
        
      },
      {
        'page': Teams(),
       
      },
      {
        'page': Feeds(),
        
      },
      {
        'page': Events(),
        
      },
      {
        'page': Profile(),
        
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.grey[400],
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.grey[400],
            icon: Icon(Icons.home,
            color: Colors.black,
            ),
            title: Text('Home',
            style: TextStyle(
              color: Colors.black,
            ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.grey[400],
            icon: Icon(Icons.group,
            color: Colors.black,
            ),
            title: Text('Team',
            style: TextStyle(
              color: Colors.black,
            ),
            ),
            ),
          BottomNavigationBarItem(
             backgroundColor: Colors.grey[400],
            icon: Icon(Icons.dashboard_outlined,
            color: Colors.black,
            ),
            title: Text('Feeds',
            style: TextStyle(
              color: Colors.black,
            ),
            ),
            ),
          BottomNavigationBarItem(
            backgroundColor: Colors.grey[400],
            icon: Icon(Icons.assignment,
            color: Colors.black,
            ),
            title: Text('Events',
            style: TextStyle(
              color: Colors.black,
            ),
            ),
          ),
          BottomNavigationBarItem(
            
            icon: Icon(Icons.person,
            color: Colors.black,
            ),
            title: Text('Profile',
            style: TextStyle(
              color: Colors.black,
            ),
            ),
          ),
        ],
      ),
    );
  }
}
