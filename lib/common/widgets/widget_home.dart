// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:pr1/common/constants/app_colors.dart';
// import 'package:pr1/common/routes/database.dart';
import 'package:pr1/common/widgets/float_bar.dart';
import 'package:pr1/common/widgets/pream_body.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(primaryColor: AppColors.violet, fontFamily: "Aref"),
      home: const FloatBar(body: PreamBody(),),
    );
  }
}
