
import 'package:bodygoals/Styling/SizeConfig.dart';
import 'package:bodygoals/Styling/Colors.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2>  with SingleTickerProviderStateMixin,AutomaticKeepAliveClientMixin {
  AnimationController _controller;
  Animation<Offset> _offsetFloat;
  Animation<Color> _colorchange;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _colorchange=ColorTween(begin: color.Grey,end: color.Black).animate(_controller);
    _colorchange.addListener(() {
      setState(() {});
    });
    _offsetFloat = Tween<Offset>( begin: Offset(1.0, 0.0), end: Offset.zero,)
        .animate(_controller);

    _offsetFloat.addListener(() {
      setState(() {});
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return    Column(
   crossAxisAlignment: CrossAxisAlignment.center,
   mainAxisAlignment: MainAxisAlignment.center,
   children: [



     Padding(
       padding:  EdgeInsets.all(SizeConfig.heightMultiplier*4),
       child: Container(
           height: SizeConfig.heightMultiplier*25,
           child: Image.asset('assets/images/page2.png')),
     ),

     Padding(
       padding: const EdgeInsets.only(left: 20,right: 20),
       child:   SlideTransition(
         position: _offsetFloat,

         child: Text('Fitness Exercise',style: TextStyle(
             fontSize: SizeConfig.heightMultiplier*3.5,
             fontWeight: FontWeight.bold,color: color.Blue,fontFamily: 'Notable'),),
       ),
     ),

   ],
 );
  }
}
