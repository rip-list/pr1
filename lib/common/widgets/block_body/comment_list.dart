// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart' ;
// import 'package:http/http.dart' as http;
import 'package:pr1/common/constants/app_colors.dart';
import 'package:pr1/common/routes/database.dart';

class CommList extends StatefulWidget {
  const CommList({super.key});

  @override
 CommListState createState() => CommListState();
}

class CommListState extends State<CommList> {
  String data = ''; // Переменная для хранения полученных данных

  @override
  void initState() {
    super.initState();
  //  String dic =  getdescriptionSpecificDataFromServer(); 
  }

  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      height: 300,
      width: 400,
      child: ListView(
  children:  <Widget>[
    ListTile(
      leading: const Icon(Icons.account_circle_sharp),
      title: Text(getnicknameDataFromServer("valera") as String),
    ),
    ListTile(
      leading:const  Icon(Icons.article_sharp),
      title: Text(getdescriptionSpecificDataFromServer() as String),
    ),
  ],
),
    );
  }
}
