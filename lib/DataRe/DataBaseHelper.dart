import 'dart:developer';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:ui_first_project/Model/UserInfo.dart';
import 'package:ui_first_project/Model/recipe.dart';

class DbHelper {
  late Database database;
  static DbHelper dbHelper = DbHelper();
  final String table1Name = "recipes";
  final String table2Name = "users";

  final String idRecipeCulmon = "id";
  final String dishNameCulmon = "name";
  final String dishTypeCulmon = "type";
  final String dishImgCulmon = "img";
  final String dishDiscCulmon = "disc";
  final String dishPrepCulmon = "prep";
  final String dishIngCulmon = "ing";
  final String dishInfoCulmon = "info";
  final String isFavCulmon = "isFav";

  final String userNameCulmon = "uname";
  final String userGenderCulmon = "gender";
  final String userEmailCulmon = "email";
  final String userPassCulmon = "password";
  initDatabase() async {
    database = await creatDatabaseConnection();
  }

  Future<Database> creatDatabaseConnection() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String folderPath = directory.path;
    return openDatabase(folderPath + '/Sqlproject.db', version: 1,
        onCreate: (db, version) {
      db.execute(
          'CREATE TABLE $table1Name ($idRecipeCulmon INTEGER PRIMARY KEY , $dishNameCulmon TEXT , $isFavCulmon TEXT  , $dishTypeCulmon INTEGER , $dishImgCulmon TEXT , $dishDiscCulmon TEXT , $dishPrepCulmon TEXT , $dishIngCulmon TEXT , $dishInfoCulmon TEXT )');
      db.execute(
          'CREATE TABLE $table2Name ($userNameCulmon TEXT NOT NULL UNIQUE PRIMARY KEY , $userGenderCulmon TEXT , $userEmailCulmon TEXT NOT NULL UNIQUE , $userPassCulmon TEXT )');
    });
  }

  singupUser(Users users) async {
    database.insert(table2Name, users.toMap());
  }

  Future<Users?> loginUser(String email, String password) async {
    var data = await database.rawQuery(
        "SELECT * FROM user WHERE $userEmailCulmon = '$email' and $userPassCulmon = '$password'");

    if (data.length > 0) {
      return new Users.fromMap(data.first);
    }

    return null;
  }

  Future<List<recipe>> getAllRecipes() async {
    List<Map<String, dynamic>> data = await database.query(table1Name);
    return data.map((e) => recipe.fromMap(e)).toList();
  }
}
