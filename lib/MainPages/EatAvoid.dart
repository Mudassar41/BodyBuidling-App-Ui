import 'package:bodygoals/Styling/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:bodygoals/Styling/Colors.dart';
class EatAvoid extends StatefulWidget {
  @override
  _EatAvoidState createState() => _EatAvoidState();
}

class _EatAvoidState extends State<EatAvoid> {
List<Txt> _limit=[Txt('Alcohol','Alcohol can negatively affect your ability to build muscle and lose fat, especially if you consume it in excess')
,Txt('Added sugars','These offer plenty of calories but few nutrients. Foods high in added sugars include candy, cookies, doughnuts, ice cream, cake and sugar-sweetened beverages, such as soda and sports drinks'),Txt('Deep-fried foods','These may promote inflammation and — when consumed in excess — disease. Examples include fried fish, french fries, onion rings, chicken strips and cheese curds')];
  List<Txt> _items=[Txt('Meats, poultry and fish','Sirloin steak, ground beef, pork tenderloin, venison, chicken breast, salmon, tilapia and cod.'),
    Txt('Dairy','Yogurt, cottage cheese, low-fat milk and cheese.'),
    Txt('Grains','Bread, cereal, crackers, oatmeal, quinoa, popcorn and rice.'),
    Txt('Fruits','Oranges, apples, bananas, grapes, pears, peaches, watermelon and berries.'),
    Txt('Starchy vegetables',' Potatoes, corn, green peas, green lima beans and cassava.'),
    Txt('Vegetables','roccoli, spinach, leafy salad greens, tomatoes, green beans, cucumber, zucchini, asparagus, peppers and mushrooms.'),
    Txt('Seeds and nuts','Almonds, walnuts, sunflower seeds, chia seeds and flax seeds.'),
    Txt('Beans and legumes',' Chickpeas, lentils, kidney beans, black beans and pinto beans.')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: color.Red,),body: ListView(children: [

      Card(child: Column(children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Bodybuilding Basics',style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*4,fontWeight: FontWeight.bold,color: color.Red),),
        ),  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Bodybuilding differs from powerlifting or Olympic lifting in that it’s judged on a competitor’s physical appearance rather than physical strength.'
              'As such, bodybuilders aspire to develop and maintain a well-balanced, lean and muscular physique.'
              'To do this, many bodybuilders start with an off-season followed by an in-season way of eating — referred to as a bulking and cutting phase, respectively During the bulking phase, which can last months to years, bodybuilders eat a high-calorie, protein-rich diet and lift weights intensely with the goal of building as much muscle as possible.',),
        )


      ],),),
      Card(child: Column(children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Bodybuilding Nutrition: Foods to Eat and Avoid',style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*4,fontWeight: FontWeight.bold,color: color.Red),),
        ),  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Like training, diet is a vital part of bodybuilding.Eating the right foods in the appropriate amounts provides your muscles with the nutrients they need to recover from workouts and grow bigger and stronger.Conversely, consuming the wrong foods or not consuming enough of the right ones will leave you with subpar results.Here are foods you should focus on and foods to limit or avoid:',),
        )


      ],),),
      Card(
        elevation: 5,
        child: Column(children: [

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Foods to Focus On',style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*4,fontWeight: FontWeight.bold,color: color.Red),),
        ),  Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context,index){

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(_items[index].Title+":",style: TextStyle(fontWeight: FontWeight.bold),),
              Text(_items[index].Des,)
            ],);



          },itemCount: _items.length,)
        )


      ],),),Card(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children:
        [Text('Foods to  Limit',style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*4,fontWeight: FontWeight.bold,color: color.Red),),

          ListView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context,index){

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_limit[index].Title+":",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text(_limit[index].Des,)
                ],);



            },itemCount: _limit.length,)
        ],),
      ),)





    ],),);
  }
}
class Txt{

  String Title;
  String Des;

  Txt(this.Title, this.Des);


}