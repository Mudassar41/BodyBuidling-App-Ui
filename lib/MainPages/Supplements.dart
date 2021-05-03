import 'package:bodygoals/Styling/Colors.dart';
import 'package:bodygoals/Styling/SizeConfig.dart';
import 'package:flutter/material.dart';
class Supplement extends StatefulWidget {
  @override
  _SupplementState createState() => _SupplementState();
}

class _SupplementState extends State<Supplement> {
  List<SupHelper> _foodsupp=[
    SupHelper('Creatine Monohydrate','This muscle-building, power-enhancing supplement has an extremely high safety profile and a plethora of evidence to support its efficacy. Creatine supplementation works by increasing the availability of creatine and phosphocreatine (PCr) within the muscle, helping to maintain energy during high-intensity exercise such as weightlifting. Furthermore, increasing the availability of PCr may help speed up recovery between sets.','assets/sup/creatine.jpg')
  ,SupHelper('Caffeine','Caffeine may be the most widely used stimulant in the world, and for good reason. It has repeatedly been shown to be an effective ergogenic aid in both endurance exercise and high-intensity activity. However, when it comes to strength performance, the effects of caffeine are a little muddier.','assets/sup/caf.jpg'),SupHelper('Branched Chain Amino Acids','If youre a strength athlete or bodybuilder, we cant think of a single reason not to take BCAAs during your workout. Besides the fact that they taste delicious, sipping on BCAAs between sets may help speed up the recovery and repair processes after a tough workout.','assets/sup/ba.jpg'),
  SupHelper(' No Boosters','Nitrate-rich foods like beets, radishes, and pomegranates are a great way to boost the production of nitric oxide (NO). Although theres very limited research examining the effects of beet root juice and pomegranate extract on resistance training, these ingredients have previously been shown to increase skeletal muscle blood flow and lead to reduced soreness, which may ultimately lead to improvements in strength and performance','assets/sup/no.jpg'),
    SupHelper('Whey protien','Fast-digesting protein like whey is optimal post-workout as it can help improve your muscles ability to recover and adapt after strenuous exercise. In fact, consumption of whey protein has been found to stimulate muscle protein synthesis to a greater degree than other proteins like casein and soy','assets/sup/wp.jpg'),
  SupHelper('Glutamine','While this nonessential amino acid may not deliver earth-shattering PRs or extreme muscle growth, it does play an important role in repair and recovery. Glutamine works by removing excess ammonia, which can accumulate during intense exercise, helping to regulate your bodys acid-base balance. Individuals who are engaged in heavy resistance training, two-a-day training splits, or are in a calorie deficit may benefit from the extra support of glutamine supplementation.','assets/sup/gu.jpg'),SupHelper(' Fish Oils','Fish oils are an excellent source of omega-3 fatty acids, which provide myriad benefits for the body. For strength athletes and bodybuilders, were most concerned with their anti-inflammatory and antioxidant properties. Intense resistance training can cause microscopic tears in your muscle fibers, leading to muscle damage and inflammation. While some inflammation is desirable, too much can delay the post-exercise recovery process.','assets/sup/fo.jpg')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: color.Red,title: Text('Food Supplements',style: TextStyle(color: Colors.white),),),body: ListView.builder(itemCount:_foodsupp.length,itemBuilder: (context,index){
      return Card(
        elevation: 5,
        child: Column(children: [Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

        Flexible(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(_foodsupp[index].Name,style: TextStyle(
                  color: color.Red,
                  fontWeight: FontWeight.bold,fontSize: SizeConfig.imageSizeMultiplier*3),),
            )),Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
          width: MediaQuery.of(context).size.width*.3,
          height: SizeConfig.imageSizeMultiplier*15,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(_foodsupp[index].Url),fit: BoxFit.cover)),),
                )




      ],),Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(_foodsupp[index].Des),
      )],),);
    }),);
  }
}
class SupHelper{

  String Name;
  String Des;
  String Url;

  SupHelper(this.Name, this.Des,this.Url);
}