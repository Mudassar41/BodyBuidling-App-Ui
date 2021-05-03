import 'package:bodygoals/MainPages/FoodDetail.dart';
import 'package:bodygoals/Styling/Colors.dart';
import 'package:bodygoals/Styling/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class DietPlan extends StatefulWidget {
  @override
  _DietPlanState createState() => _DietPlanState();
}

class _DietPlanState extends State<DietPlan> with AutomaticKeepAliveClientMixin{
  DateTime date=DateTime.now();
  List<FoodHelper> _items=[
    FoodHelper('Breakfast','assets/images/breakfast.jpg',322,322,34,67,1,[ 'Scrambled eggs with mushrooms', 'oatmeal']),
    FoodHelper('Lunch','assets/images/lunch.jpg',322,322,34,67,1,[ "Venison burger", "white rice" ,"and broccoli"]),
    FoodHelper('Dinner','assets/images/dinner.jpg',322,322,34,67,1,[ 'Salmon', 'quinoa and asparagus']),

    FoodHelper('Breakfast','assets/images/breakfast.jpg',322,322,34,67,2,[ 'Protein pancakes with light-syrup', 'peanut butter and raspberries.']),
    FoodHelper('Lunch','assets/images/lunch.jpg',322,322,34,67,2,[ 'Sirloin steak', 'weet potato and spinach salad with vinaigrette']),
    FoodHelper('Dinner','assets/images/dinner.jpg',322,322,34,67,2,[ 'Ground turkey ', 'marinara sauce over pasta.']),



    FoodHelper('Breakfast','assets/images/breakfast.jpg',322,322,34,67,3,[ 'Chicken sausage with egg', 'roasted potatoes']),
    FoodHelper('Lunch','assets/images/lunch.jpg',322,322,34,67,3,[ 'Turkey breast, basmati rice and mushrooms.']),
    FoodHelper('Dinner','assets/images/dinner.jpg',322,322,34,67,3,[ 'Mackerel, brown rice and salad leaves with vinaigrette.']),


    FoodHelper('Breakfast','assets/images/breakfast.jpg',322,322,34,67,4,[ 'Ground turkey, egg, cheese and salsa in a whole-grain tortilla.']),
    FoodHelper('Lunch','assets/images/lunch.jpg',322,322,34,67,4,[ 'Chicken breast, baked potato, sour cream and broccoli.']),
    FoodHelper('Dinner','assets/images/dinner.jpg',322,322,34,67,4,[ 'Stir-fry with chicken, egg, brown rice, broccoli, peas and carrots.']),



    FoodHelper('Breakfast','assets/images/breakfast.jpg',322,322,34,67,5,[ ' Blueberries, strawberries and vanilla Greek yogurt on overnight oats.']),
    FoodHelper('Lunch','assets/images/lunch.jpg',322,322,34,67,5,[ 'Tilapia fillets with lime juice, black and pinto beans and seasonal veggies.']),
    FoodHelper('Dineer','assets/images/dinner.jpg',322,322,34,67,5,[ 'Ground beef with corn, brown rice, green peas and green beans.']),


    FoodHelper('Breakfast','assets/images/breakfast.jpg',322,322,34,67,6,[ 'Ground turkey and egg with corn, bell peppers, cheese and salsa.']),
    FoodHelper('Lunch','assets/images/lunch.jpg',322,322,34,67,6,[ 'Tilapia fillet, potato wedges and bell peppers.']),
    FoodHelper('Dinner','assets/images/dinner.jpg',322,322,34,67,6,[ 'Diced beef with rice, black beans, bell peppers, cheese and pico de gallo.']),





  ];

@override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(body: SafeArea(

      child: ListView(children: [

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Todays Meal',style: TextStyle(

                  fontWeight: FontWeight.bold,fontSize: SizeConfig.imageSizeMultiplier*3,color: Colors.black),),
            ),

SizedBox(height: SizeConfig.imageSizeMultiplier*30,child: ListView.builder(itemBuilder: (context,index){





    return _items[index].Day==date.weekday?Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: (){

   Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FoodDetail(
                Name:_items[index].Name,
                Url:_items[index].Url,
                Cal:_items[index].Calories,
                Fat:_items[index].Fats,
                Pro:_items[index].Protiens,
                Carb:_items[index].Carbs,
                Ing:_items[index].Ingredients,



              )),
            );

      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        child: Container(width: SizeConfig.imageSizeMultiplier*25,child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


          ClipRRect(

              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
              child: Image.asset(_items[index].Url,width: SizeConfig.imageSizeMultiplier*25,fit: BoxFit.cover,height: SizeConfig.imageSizeMultiplier*20,)),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(_items[index].Name,style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*2.5,fontWeight: FontWeight.bold),),
              )


        ],),),
      ),
    ),
  ):Center(child: Container());





},itemCount: _items.length,scrollDirection:Axis.horizontal,),)




          ],
        ),


        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('Weekly Diet Plan',style: TextStyle(

              fontWeight: FontWeight.bold,fontSize: SizeConfig.imageSizeMultiplier*3,color: Colors.black),),
        ),
        ListView.builder(

          shrinkWrap: true,
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context,index){

          return Card(

            child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                _items[index].Name=='Breakfast'? Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Day ${_items[index].Day} ',style: TextStyle(color: color.Black,fontWeight: FontWeight.bold,fontSize: SizeConfig.widthMultiplier*4),),
                    )):Container(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:

                      Text(_items[index].Name,style: TextStyle(color: color.Red,fontWeight: FontWeight.bold),),


                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,i){

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(_items[index].Ingredients[i]),
                  );

                },itemCount: _items[index].Ingredients.length,)
              ],


            ),
          );

        },itemCount: _items.length,)


      ],),
    ),);
  }
}
class FoodHelper{

  String Name;
  String Url;
  double Calories;
  double Fats;
  int Protiens;
  int Carbs;
  int Day;
  List Ingredients=[];
  FoodHelper(this.Name, this.Url, this.Calories, this.Fats, this.Protiens, this.Carbs,this.Day,this.Ingredients);
}