import 'package:flutter/material.dart';
import 'package:page_turn_example/ui/home/screen.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  PageController _pageController;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
                height: 90,
                width: 100,
                child: Image(image: AssetImage("icon/icon.png"))),
            Row(children: [
              Icon(Icons.exit_to_app),
              SizedBox(width: 20,),
              Icon(Icons.help_outline)
            ],)
          ],),
        ),
      ),
      extendBody: true,
      backgroundColor: Color(0x00ffffff),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        elevation: 0,
        selectedFontSize: 0.0, unselectedFontSize: 0.0,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: SizedBox(
                child:  Icon(Icons.menu_rounded),
                width: 20,
                height: 20,
              ),
              title:  Text("", style: TextStyle(fontSize: 0),)),
          BottomNavigationBarItem(
              icon: SizedBox(
                child:  Icon(Icons.circle_outlined),
                width: 20,
                height: 20,
              ),
              title:  Text("", style: TextStyle(fontSize: 0),)),

          BottomNavigationBarItem(
              icon: SizedBox(
                child:  Icon(Icons.youtube_searched_for),
                width: 20,
                height: 20,
              ),
              title:  Text("", style: TextStyle(fontSize: 0),)),

          BottomNavigationBarItem(
              icon: SizedBox(
                child:  Icon(Icons.search),
                width: 20,
                height: 20,
              ),
              title:  Text("", style: TextStyle(fontSize: 0),)),

          BottomNavigationBarItem(
              icon: SizedBox(
                child:  Icon(Icons.print),
                width: 20,
                height: 20,
              ),
              title:  Text("", style: TextStyle(fontSize: 0),)),

          BottomNavigationBarItem(
              icon: SizedBox(
                child:  Icon(Icons.more),
                width: 20,
                height: 20,
              ),
              title:  Text("", style: TextStyle(fontSize: 0),)),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
