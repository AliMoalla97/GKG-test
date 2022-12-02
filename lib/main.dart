import 'package:flutter/material.dart';
import 'package:ui_first_project/DataRe/DataBaseHelper.dart';
import 'package:ui_first_project/Pages/AppPage.dart';
import 'package:ui_first_project/Pages/HomePage.dart';
import 'package:ui_first_project/Pages/LoginPage.dart';
import 'package:ui_first_project/Pages/MainPage.dart';
import 'package:ui_first_project/Pages/SignupPage.dart';
import 'package:ui_first_project/Pages/WelcomePage.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.dbHelper.initDatabase();
  runApp(MaterialApp(
    home: MyAppPage(),
  ));
}
