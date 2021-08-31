import 'dart:io';
import 'package:endometriosis/Models/TextListModel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class CategoryDataBase {
  static CategoryDataBase _dataBaseHelper;
  static Database _database;

  String id = 'id';
  String colId = 'tId';
  String title = 'title';
  String text = 'text';

  CategoryDataBase._createInstance();

  factory CategoryDataBase() {
    if (_dataBaseHelper == null) {
      _dataBaseHelper = CategoryDataBase._createInstance();
    }
    return _dataBaseHelper;
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializedDataBase();
    }

    return _database;
  }

  Future<Database> initializedDataBase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'mainGroups.db';

    var addressList = await openDatabase(path, version: 1, onCreate: _createDb);
    return addressList;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
      'CREATE TABLE $id($colId INTEGER PRIMARY KEY AUTOINCREMENT,'
          ' $title TEXT ,'
          ' $text TEXT ,'
    );
  }

  Future<List<TextListModel>> getAddressMapList() async {
    Database db = await this.database;
    // var result = await db.rawQuery('SELECT * FROM $id order by $colId ASC');
    var result2 = await db.query(id, orderBy: '$id ASC');
    List<TextListModel> amin = [];
    for (var o in result2) {
      amin.add(TextListModel.fromJson(o));
    }
    return amin;
  }

  Future<int> insertFactor(TextListModel model) async {
    Database db = await this.database;

    var result = db.insert(id, model.toJson());
    return result;
  }

  void cleanDataBase() async {
    Database db = await this.database;

    await db.rawDelete("delete from $id");
  }

  Future<int> deleteFactor(int id) async {
    Database db = await this.database;

    var result = await db
        .rawDelete('DELETE FROM $id WHERE $id = $id');
    //
    // var result = await db.delete(id , where: )
    return result;
  }

  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x =
    await db.rawQuery('SELECT COUNT (*) from $id');
    int result = Sqflite.firstIntValue(x);
    return result;
  }
}
