import 'package:bodygoals/MainPages/BottomNavigation.dart';
import 'package:bodygoals/MainPages/Onboard.dart';
import 'package:bodygoals/Provider/SqliteProvider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Styling/SizeConfig.dart';
import 'Styling/Colors.dart';
void main() => runApp(
   MultiProvider(providers: [

        ChangeNotifierProvider<SqliteProvider>(

          create: (BuildContext context) {
            return SqliteProvider();
          },
        ),],child:
      MyApp(),


      ));


class MyApp extends StatelessWidget {
  getBoolValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return bool
    bool boolValue = prefs.getBool('boolValue');
    return boolValue;

  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        //  print(MediaQuery.of(context).size.height);
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              theme: ThemeData(primaryColor: color.Blue ,),
              debugShowCheckedModeBanner: false,

              home:
              FutureBuilder(future: getBoolValuesSF(),
              builder: (context,snapshot){


    switch (snapshot.connectionState) {
    case ConnectionState.waiting:
    return Center(child: Container(child: const CircularProgressIndicator()));
    default:
    if (snapshot.hasError) {
    return Text('Error: ${snapshot.error}');
    } else {

      return snapshot.data==true?BottomNavigation():Onboard();

            }




              }})
            );
          },
        );
      },
    );
  }


}




