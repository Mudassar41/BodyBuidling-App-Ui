import 'package:bodygoals/Styling/Colors.dart';
import 'package:bodygoals/Styling/SizeConfig.dart';
import 'package:flutter/material.dart';
class GameDetail extends StatefulWidget {
  final String Name;
  final String Image;
  final String Des;
  final String Target;

  const GameDetail({Key key, this.Name, this.Image, this.Des, this.Target}) : super(key: key);
  @override
  _GameDetailState createState() => _GameDetailState();
}

class _GameDetailState extends State<GameDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: color.Red,),body: ListView(children: [


      Card(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),),
          child: Container(height: SizeConfig.imageSizeMultiplier*40,child: Image.asset(widget.Image,fit: BoxFit.cover,),)),



      Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 5,left: 10,bottom: 5,right: 5),
            child: Text(widget.Name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: SizeConfig.imageSizeMultiplier*3.5,color: color.Red),),
          )),
      Card(
        elevation: 5,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),),
          child:

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('How To',style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*3,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.Des,style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*2.5),),
                ),
              ],
            )


      )
     ,
      Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),),
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text('Target Area',style: TextStyle(fontWeight: FontWeight.bold,fontSize: SizeConfig.imageSizeMultiplier*3,color: color.Red),),
                )),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(widget.Target,style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*2.5),),
                )),
          ],
        ),
      ),



    ],),);
  }
}
