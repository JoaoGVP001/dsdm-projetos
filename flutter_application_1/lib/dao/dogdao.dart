import 'package:flutter_application_1/database/db.dart';
import 'package:flutter_application_1/model/dogmodel.dart';
import 'package:sqflite/sqflite.dart';

// insert
Future<int> insertDog(DogModel dog) async {
  final Database db = await getDataBase();
  return db.insert(
    "dogs",
    dog.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

// findAll
Future<List<Map>> findAll() async {
  final Database db = await getDataBase();
  return db.query("dogs");
}