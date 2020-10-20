import 'package:agrithon/screens/disease_screen.dart';
import 'package:agrithon/screens/home_screen.dart';
import 'package:agrithon/screens/search_screen.dart';
import 'package:agrithon/screens/weather_screen.dart';
import 'package:flutter/material.dart';



class BodyScreen extends StatefulWidget {
  @override
  _BodyScreenState createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {

  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  static List <Widget> _widgetOptions = <Widget>[
    homeScreen(),
    searchScreen(),
    weatherScreen(),
    diseaseScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demeter",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),),
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bug_report),
              title: Text('Search'),
            ),],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[600],
          onTap: _onItemTapped,
        )
    );


  }


}
