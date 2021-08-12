import 'package:flutter/material.dart';
import 'AdminHome.dart';
import 'AdminSetting.dart';
import 'UserHome.dart';
import 'UserSettings.dart';



/// This Widget is the main application widget.
class usermain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNavigationBar (),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    demovisitorlist(),
    Text('User Activity',style: TextStyle(
      fontSize: 40.0,
      backgroundColor: Colors.black12
    ),),
    UserSettings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          title: const Text('User'),
          centerTitle: true,
          backgroundColor: Colors.blue
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   backgroundColor: Colors.green,
      //   onPressed: () {
      //   },
      // ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.lightBlueAccent
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.work_rounded),
                title: Text('Activity'),
                backgroundColor: Colors.lightBlueAccent
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Setting'),
              backgroundColor: Colors.lightBlueAccent,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5
      ),


    );
  }
}