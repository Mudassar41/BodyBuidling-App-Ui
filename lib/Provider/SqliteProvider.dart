
import 'package:bodygoals/MainPages/AddData.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';
class SqliteProvider with ChangeNotifier {
  Database _database;

  Future<void> openDb() async {
    _database = await openDatabase(
      // Set the path to the database.
      join(await getDatabasesPath(), 'Gym.db'),
      // When the database is first created, create a table to store dogs.
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return db.execute(
          "CREATE TABLE Fit(id INTEGER PRIMARY KEY autoincrement, Title TEXT, Days Text)",
        );
      },
      // Set the version. This executes the onCreate function and provides a
      // path to perform database upgrades and downgrades.
      version: 1,);
  }


  Future<void> insertDog(Datahelper addData) async {
    await openDb();
    // Get a reference to the database.
    final Database db = await _database;

    // Insert the Dog into the correct table. Also specify the
    // `conflictAlgorithm`. In this case, if the same dog is inserted
    // multiple times, it replaces the previous data.
    await db.insert(
      'Fit',
      addData.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    notifyListeners();
  }

  Future<List<Datahelper>> GetData() async{
    await openDb();
    // Get a reference to the database.
    final Database db = await _database;
    // Query the table for all The Dogs.
    var Values = await db.query('Fit');
    List<Datahelper> list=[];
    Values. forEach((i){
      Datahelper cart=Datahelper.add( id: i['id'],Days: i['Days'],Title: i['Title']);
      print(i['p_id']);
      list.add(cart);
    });

print(list.length);
    return list;
  }

//  Future<void> UpdateCart(Cart cart) async {
//    // Get a reference to the database.
//    final db = await _database;
//
//    // Update the given Dog.
//    await db.update(
//      'Cart',
//      cart.toMap(),
//      // Ensure that the Dog has a matching id.
//      where: "p_id = ?",
//      // Pass the Dog's id as a whereArg to prevent SQL injection.
//      whereArgs: [cart.p_id],
//    );
//  }
//  Future<void> Add_Or_Update(Cart cart)async {
//    await openDb();
//    final Database db = await _database;
//    var dbClient = await _database;
//    var result = await db.query("Cart",where: "p_id=?",whereArgs: [cart.p_id]);
//
//
//    if(result.length==0){
//      await db.insert(
//        'Cart',
//        cart.toMap(),
//        conflictAlgorithm: ConflictAlgorithm.replace,
//      );
//    }
//    else
//      await db.update(
//        'Cart',
//        cart.toMap(),
//        // Ensure that the Dog has a matching id.
//        where: "p_id = ?",
//        // Pass the Dog's id as a whereArg to prevent SQL injection.
//        whereArgs: [cart.p_id],
//      );
//
//    notifyListeners();
//
//
//  }
//
//  Future<void> updateCart(Cart cart) async {
//    // Get a reference to the database.
//    final db = await _database;
//
//    // Update the given Dog.
//    await db.update(
//      'Cart',
//      cart.toMap(),
//      // Ensure that the Dog has a matching id.
//      where: "p_id = ?",
//      // Pass the Dog's id as a whereArg to prevent SQL injection.
//      whereArgs: [cart.p_id],
//    );
//    notifyListeners();
//  }

  Future<void> DeleteCart(int id) async {
    //
    openDb();
    // Get a reference to the database.
    final db = await _database;

    // Remove the Dog from the Database.
    await db.delete(
      'Fit',
      // Use a `where` clause to delete a specific dog.
      where: "id = ?",
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
    notifyListeners();
  }

  Future<int> getcartTotal() async {
    await openDb();
    // Get a reference to the database.
    var dbClient = await _database;
    var result = await dbClient.rawQuery("SELECT SUM(p_price*p_quantity) as Total FROM Cart");
    // print(result);
    int x=Sqflite.firstIntValue(result);
    return x;
    //return x;
    //cartprovider.Total=result as int;

  }

  Future<int > getiteminCart()async{
    await openDb();
    // Get a reference to the database.
    var dbClient = await _database;
    var result = await dbClient.rawQuery("SELECT COUNT(*) FROM Cart");
    // print(result);
    int x=Sqflite.firstIntValue(result);
    return x;
  }

  Future<void> ClearCart()async{
    await openDb();
    // Get a reference to the database.
    var dbClient = await _database;
    await dbClient.rawQuery("DELETE FROM Cart");
    notifyListeners();
    // print(result);

  }

}