// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:pr1/common/widgets/pream_body.dart';
import '../../constants/app_colors.dart';
// import '../float_bar.dart';



class Bio extends StatelessWidget {
  const Bio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(primaryColor: AppColors.violet, fontFamily: "Aref"),
      home: const PreamBody() );
        
    
  }
}