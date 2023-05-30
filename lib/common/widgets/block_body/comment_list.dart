import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pr1/common/constants/app_colors.dart';
import 'package:pr1/common/routes/database.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String data = ''; // Переменная для хранения полученных данных

  @override
  void initState() {
    super.initState();
   String dic =  getdescriptionSpecificDataFromServer(); 
  }

  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      height: 300,
      width: 400,
      child: ListView(
  children: const <Widget>[
    ListTile(
      leading: Icon(Icons.account_circle_sharp),
      title: Text('Nickname'),
    ),
    ListTile(
      leading: Icon(Icons.article_sharp),
      title: Text('Description'),
    ),
  ],
),
    );
  }
}
