import 'dart:ui';

import 'package:bodygoals/MainPages/EatAvoid.dart';
import 'package:bodygoals/MainPages/FitnessExercise.dart';
import 'package:bodygoals/MainPages/GameInfo.dart';
import 'package:bodygoals/MainPages/Supplements.dart';
import 'package:bodygoals/Styling/Colors.dart';
import 'package:bodygoals/Styling/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ExercisePage extends StatefulWidget {
  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> with AutomaticKeepAliveClientMixin {
  List<Addexercises> _gameName=[Addexercises('Chest','assets/chest/benchpress.jpg',1),
    Addexercises('Biceps','assets/biceps/dumble curl.JPG',2),
    Addexercises('Triceps','assets/triceps/lying extention.JPG',3),
    Addexercises('Shoulder','assets/shoulder/one arm cable.JPG',4),
    Addexercises('Back','assets/back/pull up.jpg',5),
    Addexercises('Legs','assets/legs/hack squats.jpg',6),
    Addexercises('Cardio','assets/cardio/2.jpg',7),
    Addexercises('Forearm','assets/forearm/1.jpg',8),];
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(

      child: Column(
        children: [




          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('WORKOUTS',style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*3.5,fontWeight: FontWeight.bold,color: color.Red),),
            ),
          ),




          SizedBox(height: SizeConfig.imageSizeMultiplier*25,child: ListView.builder(itemBuilder: (context,index){





            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: InkWell(
                onTap: (){




                },
                child: InkWell(
                  onTap: (){
 print(_gameName[index].cat);
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GameInfo(
               CatId:_gameName[index].cat,
                  Name:_gameName[index].Name





              )),
            );


                  },
                  child: Card(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [

                        Container(width: SizeConfig.imageSizeMultiplier*20,child:Container(decoration: BoxDecoration(image: DecorationImage(
                          image: AssetImage(_gameName[index].Url),fit: BoxFit.cover

                      )),child: Container(color: Colors.black12),),),
Positioned(

    top: 10,
    left: 10,
    child:Text(_gameName[index].Name.toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                      ],

                    ),
                  ),
                ),
              ),
            );





          },itemCount: _gameName.length,scrollDirection:Axis.horizontal,),)

,
        Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Recommended',style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*3.5,fontWeight: FontWeight.bold,color: color.Red),),
        ),
      )
        ,Expanded(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [

           Flexible(child: InkWell(
             onTap: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => FitnessExercise()),
               );
             },
             child: Card(
               clipBehavior: Clip.antiAlias,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10.0),
                 ),
               elevation: 5,
                 child: Container(child: Stack(
                   children: [ Container(decoration: BoxDecoration(
                       image: DecorationImage(image: AssetImage('assets/fitness.jpg'),fit: BoxFit.cover)
                   ),child: Container(color: Colors.black12,),), Align(
                     alignment: Alignment.center,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text('Fitness Exercise',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        // Text('What to Avoid',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                       ],
                     ),
                   ),],

                 ),)),
           )),
              Flexible(
                  child: Container(child: Column(


                children: [

                  Flexible(
                      child: InkWell(
                        onTap: (){ Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EatAvoid()),
                        );},
                        child: Card(
clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            child: Stack(
                              children: [ Container(decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/food.jpg'),fit: BoxFit.cover)
                              ),child: Container(color: Colors.black26,),), Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('What to Eat',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text('What to Avoid',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),],

                            )),
                      )),  Flexible(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Supplement()),
                          );
                        },
                        child: Card(
clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            child: Container(  child: Stack(
                              children: [ Container(decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/supp.jpg'),fit: BoxFit.cover)
                              ),child: Container(color: Colors.black26,),), Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Supplemetns',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

                                  ],
                                ),
                              ),],

                            ))),
                      ))
              ],),))


            ],),
        ),)


        ],
      ),
    ),);
  }
}
class Addexercises{

  String Name,Url;
  int cat;


  Addexercises(this.Name, this.Url,this.cat);
}