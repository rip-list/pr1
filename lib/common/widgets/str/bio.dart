// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';




class Bio extends StatelessWidget {
  const Bio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
        primaryColor: AppColors.violet,
         fontFamily: "Aref",
         ),
      home:  Scaffold(
        appBar:AppBar(
          backgroundColor: AppColors.primary,
           title: const Text("bio"),
           ),
      body:Container( color: AppColors.secondary,
        child: Column( children: [
          Row( 
            children: [ 
              Container(
                height: 50,
                width: 50,
                 color: AppColors.transparentwhite,
                  child: const Center(child: Text("Мразь j,sryjdtyyfz")),
                  ),
                  ],
                  ),
              ],
               ),
      ),
      )
       );
        
    
  }
}