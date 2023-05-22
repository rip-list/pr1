// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:pr1/common/constants/app_colors.dart';
import 'package:pr1/common/routes/database.dart';
import 'package:pr1/common/widgets/float_bar.dart';


class MyApp extends StatelessWidget {
   final AppDatabase? database;

   
    const MyApp({Key? key, required this.database,  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(primaryColor: AppColors.violet, fontFamily: "Aref"),
      home: const FloatBar(),
    );
  
  }
}
