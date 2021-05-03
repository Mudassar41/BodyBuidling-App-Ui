
import 'package:bodygoals/Styling/Colors.dart';
import 'package:bodygoals/Styling/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FoodDetail extends StatefulWidget {
  final Name,Url,Cal,Fat,Pro,Carb,Ing;

  const FoodDetail({Key key, this.Name, this.Url, this.Cal, this.Fat, this.Pro, this.Carb, this.Ing}) : super(key: key);
  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:


      Column(

        children: [

          Stack(

            children: [ Container(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.Url),fit: BoxFit.cover)),
              width: double.infinity,
              height: SizeConfig.imageSizeMultiplier*50,
            ),
              Container(    width: double.infinity,
                height: SizeConfig.imageSizeMultiplier*50,
                child: Column(children: [

                  Expanded(child: Container(),),
                  Container(height: 50,decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),)


                ],),),

              Positioned(child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back,size: SizeConfig.imageSizeMultiplier*5,color: Colors.black,),),)
            ],
          ),Expanded(child: SingleChildScrollView(
            child: Column(children: [

              Text(widget.Name+" High Protien Time ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: SizeConfig.imageSizeMultiplier*4,fontStyle: FontStyle.normal),)
              ,Padding(
                padding: const EdgeInsets.all(8.0),
                child:   Text('1650 calories per serving',style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*3),),


              ),Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 5,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Cal " +'${widget.Cal}'),
                      ),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),),
                  ), Card(
                    elevation: 5,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Fat" +'${widget.Fat}'),
                      ),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),),
                  ), Card(
                    elevation: 5,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Protien " +'${widget.Pro}'),
                      ),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),),
                  ),
                ],
              ),
              Card(
                elevation: 5,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Carbohydrates " +'${widget.Carb}'),
                  ),
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(" Ingredients ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: SizeConfig.imageSizeMultiplier*4,fontStyle: FontStyle.normal),),
              ),
             Container(

               child: ListView.builder(shrinkWrap: true,scrollDirection: Axis.vertical,itemBuilder: (context,index){
                 return Padding(
                   padding: const EdgeInsets.only(top: 5,left: 10,bottom: 5),
                   child: Row(
                     children: [
                       Text('${index+1} ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: SizeConfig.imageSizeMultiplier*2.8),),
                       Flexible(child: Text(widget.Ing[index],style: TextStyle(color: color.Red,fontSize: SizeConfig.imageSizeMultiplier*2.8))),
                     ],
                   ),
                 );
               },itemCount: widget.Ing.length,),
             )


            ],),
          ),)



        ],

      ),);


  }
}
