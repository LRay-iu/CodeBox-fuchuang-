// import 'dart:async';
// import 'package:flutter/widgets.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// void main() async {
//   // Avoid errors caused by flutter upgrade.
//   // Importing 'package:flutter/widgets.dart' is required.
//   WidgetsFlutterBinding.ensureInitialized();
//   // Open the database and store the reference.
//   var dataPath='xiao_tally/api/db/';
//   String path = join(dataPath, 'user.db');

// final database = openDatabase(

//     join(await getDatabasesPath(), 'user.db'),
//     // When the database is first created, create a table to store dogs.
//     onCreate: (db, version) {
//       // Run the CREATE TABLE statement on the database.
//       return db.execute(
//         'CREATE TABLE users (id INTEGER PRIMARY KEY,username TEXT NOT NULL,password TEXT NOT NULL)',
//       );
//     },
//     // Set the version. This executes the onCreate function and provides a
//     // path to perform database upgrades and downgrades.
//     version: 1,
//   );


//   // Define a function that inserts dogs into the database
//   Future<void> insertUser(User user) async {
//     // Get a reference to the database.
//     final db = await database;

//     await db.insert(
//       'users',
//       user.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }

//   // A method that retrieves all the dogs from the dogs table.
//   Future<List<User>> user() async {
//     // Get a reference to the database.
//     final db = await database;

//     // Query the table for all The Dogs.
//     final List<Map<String, dynamic>> maps = await db.query('users');

//     // Convert the List<Map<String, dynamic> into a List<Dog>.
//     return List.generate(maps.length, (i) {
//       return User(
//         id: maps[i]['id'],
//         username: maps[i]['username'],
//         password: maps[i]['password'],
//       );
//     });
//   }

//   Future<void> updateUser(User user) async {
//     // Get a reference to the database.
//     final db = await database;

//     // Update the given Dog.
//     await db.update(
//       'users',
//       user.toMap(),
//       // Ensure that the Dog has a matching id.
//       where: 'id = ?',
//       // Pass the Dog's id as a whereArg to prevent SQL injection.
//       whereArgs: [user.id],
//     );
//   }

//   Future<void> deleteUser(int id) async {
//     // Get a reference to the database.
//     final db = await database;

//     // Remove the Dog from the database.
//     await db.delete(
//       'users',
//       // Use a `where` clause to delete a specific dog.
//       where: 'id = ?',
//       // Pass the Dog's id as a whereArg to prevent SQL injection.
//       whereArgs: [id],
//     );
//   }

//   // Create a Dog and add it to the dogs table
//   var fido = const User(
//     id: 0,
//     username: 'Fido',
//     password: '35',
//   );
//   print(path);
//   await insertUser(fido);

//   // Now, use the method above to retrieve all the dogs.
//   print(await user()); // Prints a list that include Fido.

//   // Update Fido's age and save it to the database.
//   fido = User(
//     id: fido.id,
//     username: fido.username,
//     password: join(fido.password ,'7'),
//   );
//   await updateUser(fido);

//   // Print the updated results.
//   print(await user()); // Prints Fido with age 42.

//   // Delete Fido from the database.
//   //await deleteDog(fido.id);

//   // Print the list of dogs (empty).
//   print(await user());
// }

// class User {
//   final int id;
//   final String username;
//   final String password;

//   const User({
//     required this.id,
//     required this.username,
//     required this.password,
//   });

//   // Convert a Dog into a Map. The keys must correspond to the names of the
//   // columns in the database.
//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'username': username,
//       'password': password,
//     };
//   }

//   // Implement toString to make it easier to see information about
//   // each dog when using the print statement.
//   @override
//   String toString() {
//     return 'User{id: $id, username: $username, password: $password}';
//   }

// }