// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CommentWidget extends StatefulWidget {
  const CommentWidget({Key? key}) : super(key: key);

  @override
  _CommentWidgetState createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  List<Map<String, dynamic>> comments = [];

  @override
  void initState() {
    super.initState();
    _fetchComments();
  }

  Future<void> _fetchComments() async {
   
      List<Map<String, dynamic>> commentData = await fetchComments();

      setState(() {
        comments = commentData;
      });
   
  }

  Future<List<Map<String, dynamic>>> fetchComments() async {
    String url = "localhost";
    final response = await http.get(Uri.http(url, 'local_db.php'));

    if (response.statusCode == 200) {
      print('Данные успешно получены с сервера');
      print('Ответ от сервера: ${response.body}');

      List<dynamic> jsonList = json.decode(response.body);

      List<Map<String, dynamic>> comments = jsonList
          .map((json) => {
                'nickname': json['nickname'],
                'description': json['description'],
              })
          .toList();

      return comments;
    } else {
      print('Ошибка при получении данных с сервера');
      print('Статус код: ${response.statusCode}');
      print('Текст ошибки: ${response.body}');
      throw ('Ошибка при получении данных с сервера');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Комментарии'),
      ),
      body: ListView.builder(
        itemCount: comments.length,
        itemBuilder: (context, index) {
          String nickname = comments[index]['nickname'].toString();
          String description = comments[index]['description'].toString();

          return ListTile(
            title: Text('$nickname: $description'),
          );
        },
      ),
    );
  }
}
