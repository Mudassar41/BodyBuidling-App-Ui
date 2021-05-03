


import 'package:bodygoals/MainPages/BottomNavigation.dart';
import 'package:bodygoals/OnboardPages/Page1.dart';
import 'package:bodygoals/OnboardPages/Page2.dart';
import 'package:bodygoals/OnboardPages/Page3.dart';
import 'package:bodygoals/Styling/SizeConfig.dart';
import 'package:bodygoals/Styling/Colors.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboard extends StatefulWidget {
  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> with TickerProviderStateMixin {
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  PageController pageController = PageController();
  int _selectedIndex = 0;
  List<Widget> _widgets = <Widget>[Page2(),Page1(),Page3()];


  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(child: PageView(
              controller: pageController,
              onPageChanged: _onPageChanged,
              children: _widgets),),
          Container(height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                InkWell(
                    onTap: (){pageController.nextPage(duration: _kDuration, curve: _kCurve);},
                    highlightColor: color.Blue,
                    child: Text('Next',style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*3,fontWeight: FontWeight.bold))),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _widgets.map((e) {
                    int index = _widgets.indexOf(e);

                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(height: SizeConfig.heightMultiplier + 3,
                        width: SizeConfig.heightMultiplier + 3,
                        decoration: BoxDecoration(shape: BoxShape.circle,
                            color: _selectedIndex == index ? color.Blue : color
                                .Grey),),
                    );
                  }).toList(),
                ),   InkWell(
                  highlightColor: color.Blue,
                    onTap: (){
                      addBoolToSF();
                      Navigator.of(context).push(_createRoute());
                    },
                    child: Text('Skip',style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*3,fontWeight: FontWeight.bold),)),
              ],
            ),
          )
        ],
      ),

    );
  }


  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => BottomNavigation(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
  addBoolToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('boolValue', true);
  }

}





















