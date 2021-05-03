import 'package:bodygoals/Provider/SqliteProvider.dart';
import 'package:bodygoals/Styling/Colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:provider/provider.dart';
class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  SqliteProvider sqliteProvider;
  Datahelper datahelper=Datahelper();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    sqliteProvider = Provider.of<SqliteProvider>(context, listen: false);
    return Scaffold(appBar: AppBar(backgroundColor: color.Red),body: ListView(children: [Form(
        key: _formKey,
        autovalidate: true,

        child: Column(children: [
          _buildTitle(),_buildDays()
          ,RaisedButton(color: color.Red,child: Text('Save',style: TextStyle(color: Colors.white),),onPressed: (){


            if (!_formKey.currentState.validate()) {
              return;
            }

            _formKey.currentState.save();
            print(datahelper.Days);



            sqliteProvider.insertDog(Datahelper.add(Title: datahelper.Title, Days: datahelper.Days));
            Fluttertoast.showToast(
                msg: "Data Added",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          },)



        ],)),],)
   );
  }
  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Title .. Wieght Gain etc'),
        // initialValue: _currentfood.name,
        keyboardType: TextInputType.text,
        style: TextStyle(fontSize: 20),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Title is required';
          }

          if (value.length < 3 || value.length > 20) {
            return 'Title must be more than 3 and less than 20';
          }

          return null;
        },
        onSaved: (String value) {
          datahelper.Title = value;
        },
      ),
    );
  }
  Widget _buildDays() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Days'),
        // initialValue: _currentfood.name,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 20),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Days  required';
          }



          return null;
        },
        onSaved: (String value) {
          datahelper.Days = value;
        },
      ),
    );
  }
}
class Datahelper{


  int id;
  String Title;
  String Days;
  Datahelper();

  Datahelper.add({this.id, @required this.Title, @required this.Days});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'Title': Title,
      'Days': Days,
    };
  }

}