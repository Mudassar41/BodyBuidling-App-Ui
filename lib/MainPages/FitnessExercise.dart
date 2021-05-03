import 'package:bodygoals/Styling/Colors.dart';
import 'package:bodygoals/Styling/SizeConfig.dart';
import 'package:flutter/material.dart';
class FitnessExercise extends StatefulWidget {
  @override
  _FitnessExerciseState createState() => _FitnessExerciseState();
}

class _FitnessExerciseState extends State<FitnessExercise> {
  List<HomeFitness> _games=[HomeFitness('Push Ups','assets/fitness/pushups.jpg'),
    HomeFitness('Incline Push Ups','assets/fitness/inpush.jpg'),

    HomeFitness('Decline Push Ups','assets/fitness/decline.jpg')
  ,HomeFitness('Bench Dips','assets/fitness/dips.jpg')
  ,HomeFitness('Knee Push Ups','assets/fitness/knee.jpg')
  ,HomeFitness('Lunge','assets/fitness/lunge.jpg'),
    HomeFitness('Squats','assets/fitness/squats.jpg'),
    HomeFitness('Pull Ups','assets/back/pull up.jpg'),
    HomeFitness('Crunches','assets/Abs/crunches.jpg'),
    HomeFitness('Leg Raise','assets/Abs/flat bench le raise.jpg'),
    HomeFitness('Hanging Legs Raise','assets/Abs/hanging raise.jpg'),
    HomeFitness('Planks','assets/Abs/planks.jpg'),
    HomeFitness('Incline Leg Raise','assets/Abs/inclin leg raise.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: color.Red,),
      body: new GridView.builder(
        gridDelegate:    new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _games.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Card(
              elevation: 5,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                child: InkWell(
                  onTap: () {


                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        // return object of type Dialog
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(20.0)), //this right here
child: Container(
  
  height: SizeConfig.imageSizeMultiplier*40,
child: Stack(

  children: [

  ClipRRect(

      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      child: Image.asset(_games[index].Url,fit: BoxFit.cover,height: SizeConfig.imageSizeMultiplier*40 ,)),Positioned(child: IconButton(
      icon: Icon(Icons.clear,color: Colors.black,),onPressed: (){

        Navigator.pop(context);
    },),)


],),


),
                        );
                      },
                    );




                  },
                  child: GridTile(
                      footer: Container(

                        color: Colors.white54,
                        child: ListTile(
                          leading: Text(
                            _games[index].Name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),


                        ),
                      ),
                      child: Image.asset(
                       _games[index].Url,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
          );}),);
  }

}
class HomeFitness{

  String Name;
  String Url;

  HomeFitness(this.Name, this.Url);
}