// import 'package:xiao_tally/config/api.dart';
// import 'package:xiao_tally/src/generated/google/protobuf/timestamp.pb.dart';
// import 'package:xiao_tally/src/generated/xiao_grpc.pbgrpc.dart';
// import 'package:grpc/grpc.dart';

// Future<void> tryGrpc() async {
//   final record = Record();
//   record.amount = 100.25;
//   record.categoryId = 'abc-123';
//   record.accountId = 'rfg-456';
//   record.timestamp = Timestamp.fromDateTime(DateTime.now());
//   record.note = 'KFC疯狂星期四';

//   final result = await addRecord(record);
//   print('添加记录: $result');
// }

// Future<bool> addRecord(Record record) async {
//   final channel = getChannel();
//   final client = XiaoGRPCClient(channel);

//   try {
//     final response = await client.addRecord(
//       record,
//       options: CallOptions(compression: const GzipCodec()),
//     );
//     print('收到: ${response.msg}');
//     return true;
//   } catch (e) {
//     print('Caught error: $e');
//     return false;
//   } finally {
//     await channel.shutdown();
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void RecordEdit(Record value, String mark) async {
  // Avoid errors caused by flutter upgrade.
  // Importing 'package:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  var dataPath = 'xiao_tally/api/db/';
  String path = join(dataPath, 'record.db');

  final database = openDatabase(
    path,
    // When the database is first created, create a table to store dogs.
    onCreate: (db, version) {
      // Run the CREATE TABLE statement on the database.
      return db.execute(
        'CREATE TABLE record (id INTEGER PRIMARY KEY,amount REAL,category TEXT NOT NULL,usetime TEXT NOT NULL,note TEXT NOT NULL)',
      );
    },
    // Set the version. This executes the onCreate function and provides a
    // path to perform database upgrades and downgrades.
    version: 1,
  );

  // Define a function that inserts dogs into the database
  Future<void> insertRecord(Record record) async {
    // Get a reference to the database.
    final db = await database;

    await db.insert(
      'record',
      record.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // A method that retrieves all the dogs from the dogs table.
  Future<List<Record>> record() async {
    // Get a reference to the database.
    final db = await database;

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('record');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return Record(
          id: maps[i]['id'],
          amount: maps[i]['amount'],
          category: maps[i]['category'],
          usetime: maps[i]['usetime'],
          note: maps[i]['note']);
    });
  }

  Future<void> updateRecord(Record record) async {
    // Get a reference to the database.
    final db = await database;

    // Update the given Dog.
    await db.update(
      'record',
      record.toMap(),
      // Ensure that the Dog has a matching id.
      where: 'id = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [record.id],
    );
  }

  Future<void> deleteRecord(int id) async {
    // Get a reference to the database.
    final db = await database;

    // Remove the Dog from the database.
    await db.delete(
      'record',
      // Use a `where` clause to delete a specific dog.
      where: 'id = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }

  switch (mark) {
    case 'add':
      {
        await insertRecord(value);
        print(await record());
      }
      break;
    case 'update':
      {
        await updateRecord(value);
        print(await record());
      }
      break;
    case 'delete':
      {
        await deleteRecord(value.id);
        print(await record());
      }
      break;
  }

  // // Create a Dog and add it to the dogs table
  // var test_1 = const Record(
  //     id: 0, amount: 1000, category: '娱乐', usetime: '2023-4-3', note: '洗脚大促销');
  // print(path);
  // await insertRecord(test_1);

  // // Now, use the method above to retrieve all the dogs.
  // print(await record()); // Prints a list that include Fido.

  // // Update Fido's age and save it to the database.
  // var test_2 =const Record(
  //   id: 1,
  //   amount: 50,
  //   classification: '吃饭',
  //   usetime: '2023-4-3',
  //   note: '疯狂星期四'
  // );
  // await insertRecord(test_2);
  // print(await record());
  // test_2 =const Record(
  //   id: 1,
  //   amount: 50,
  //   classification: '吃饭',
  //   usetime: '2023-4-3',
  //   note: '尖叫星期三'
  // );
  // await updateRecord(test_2);

  // // Print the updated results.
  // print(await record()); // Prints Fido with age 42.

  // // Delete Fido from the database.
  // await deleteRecord(0);
  // await deleteRecord(1);

  // // Print the list of dogs (empty).
  // print(await record());
}

class Record {
  final int id;
  final double amount;
  final String category;
  final String usetime;
  final String note;

  const Record(
      {required this.id,
      required this.amount,
      required this.category,
      required this.usetime,
      required this.note});

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'amount': amount,
      'category': category,
      'usetime': usetime,
      'note': note
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Record{id:$id,amount: $amount, category: $category, usetime: $usetime,note:$note}';
  }
}
