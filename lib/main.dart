// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:pr1/common/routes/database.dart';
// import 'package:sqflite/sqflite.dart';
import 'common/widgets/widget_home.dart'; 

// import "package:moor_flutter/moor_flutter.dart" as moor_flutter; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final database = AppDatabase();
  await database.openDatabase();

  runApp(MyApp(database: database));

  await database.closeDatabase();
}







/*
TODO блять 
думай как исправить кнопки - придумал
думай Честер, ДУМАЙ СУКА!

TODO?: читай ниже мой пастулат 
следуещее туду 
наследование и конструкций 
по хорошему тут должна быть сыльна блок схему 
но она будет нарисованна когда нибудь под конец проекта 


SecBody->PreamBody->Sliver->FloatBar->МуApp->RUN

по мере написания что то ещё появится, придумаю карту как это разрисовать


*/
