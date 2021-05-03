

import 'package:bodygoals/MainPages/DietPlan.dart';
import 'package:bodygoals/MainPages/ExercisePage.dart';
import 'package:bodygoals/Styling/my_flutter_app_icons.dart';
import 'package:bodygoals/Styling/Colors.dart';
import 'package:flutter/material.dart';

import 'DailyActivity.dart';
class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _selectedIndex = 0;

  List<Widget> _widgets = <Widget>[ExercisePage(),DietPlan(),DailyActivity()];
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }
  void _onItemTapped(int index) {
    pageController.jumpToPage(index);
  }
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: color.Red,title: Text('Body Goals'.toUpperCase(),style: TextStyle(color: Colors.white),),actions: [Image.asset('assets/icons/book.png',fit: BoxFit.cover,)],),
     body: PageView(
        controller: pageController,
        onPageChanged: _onPageChanged,
        children: _widgets,
     physics: BouncingScrollPhysics(),
      ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                backgroundColor: color.Red,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.black,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(MyFlutterApp.gym), title: Text('Workouts')),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.fastfood), title: Text('Diet Plan')),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.assessment), title: Text('Goal Set')),
                ],
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
              ),
            )
        )
    );
  }
}

