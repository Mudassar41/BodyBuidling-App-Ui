import 'package:bodygoals/MainPages/AddData.dart';

import 'package:bodygoals/Provider/SqliteProvider.dart';
import 'package:bodygoals/Styling/Colors.dart';
import 'package:bodygoals/Styling/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class DailyActivity extends StatefulWidget {
  @override
  _DailyActivityState createState() => _DailyActivityState();
}

class _DailyActivityState extends State<DailyActivity> with AutomaticKeepAliveClientMixin{
  SqliteProvider sqliteProvider;
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    sqliteProvider = Provider.of<SqliteProvider>(context);
    return Scaffold(

body: Container(
  child:   FutureBuilder(future: sqliteProvider.GetData(),
  
  builder: (context,snapshot){
     if(!snapshot.hasData){
    return Center(child: Text('No Data'),);
    }
   else if(snapshot.hasData){
      return ListView.builder(itemBuilder: (context,index){
        return Card(
  
            elevation: 5,
  
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Goal ${snapshot.data[index].id}',style: TextStyle(fontSize: SizeConfig.imageSizeMultiplier*4,fontWeight: FontWeight.bold,color: color.Red),),
                ),
                Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(snapshot.data[index].Title.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),),),  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("ESTIMATED DAYS "+snapshot.data[index].Days.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold)),),    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: IconButton(icon: Icon(Icons.delete,color: color.Red,),onPressed: (){
                        int id=snapshot.data[index].id;
                        print(id);
                        sqliteProvider.DeleteCart(id);},)
  
                  ),],)
  
              ],
  
            ));
      },itemCount: snapshot.data.length,);
  
  
  
  
  
    }


   else  return Container(
  
        padding: EdgeInsets.only(top: 20),
  
        child: Center(child: CupertinoActivityIndicator()));
  
  },),
),

      floatingActionButton: FloatingActionButton(backgroundColor: color.Red,child: Icon(Icons.add),tooltip: 'Add Goal',onPressed: (){


      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddData()),
      );
    },),);
  }
}
