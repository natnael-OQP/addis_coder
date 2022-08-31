import 'package:addis_coder/screen/home/home_screen.dart';
import 'package:addis_coder/screen/question/question.dart';
import 'package:addis_coder/screen/type/types_screen.dart';
import 'package:addis_coder/screen/week/week_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    WeekScreen(),
    TypesScreen(),
    QuestionScreen(),
    Text(
      'Index 4: code',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: HexColor("#EF4636"),
            showUnselectedLabels: false,
            showSelectedLabels: false,
            unselectedItemColor: HexColor("#f2f2f2"),
            selectedItemColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: const Icon(Icons.home_outlined),
                activeIcon: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.home_filled),
                    Container(
                      color: Colors.white,
                      // margin: const EdgeInsets.only(top: 5),
                      height: 3,
                      width: 20,
                    )
                  ],
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.search),
                activeIcon: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.search),
                    Container(
                      color: Colors.white,
                      // margin: const EdgeInsets.only(top: 5),
                      height: 3,
                      width: 20,
                    )
                  ],
                ),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.gesture_sharp),
                activeIcon: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.gesture_sharp),
                    Container(
                      color: Colors.white,
                      // margin: const EdgeInsets.only(top: 5),
                      height: 3,
                      width: 20,
                    )
                  ],
                ),
                label: 'gear',
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.question_mark_outlined),
                activeIcon: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.question_mark_outlined),
                    Container(
                      color: Colors.white,
                      // margin: const EdgeInsets.only(top: 5),
                      height: 3,
                      width: 20,
                    )
                  ],
                ),
                label: 'question mark',
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.code_off_outlined),
                activeIcon: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.code),
                    Container(
                      color: Colors.white,
                      // margin: const EdgeInsets.only(top: 5),
                      height: 3,
                      width: 20,
                    )
                  ],
                ),
                label: 'code',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
