import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pr1/common/constants/app_colors.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String data = ''; // Переменная для хранения полученных данных

  @override
  void initState() {
    super.initState();
    fetchData(); // Вызов функции для получения данных при инициализации виджета
  }

  Future<void> fetchData() async {
    try {
      String result = await getSpecificDataFromServer(
          "valera"); // Замените "valera" на нужное значение
      setState(() {
        data = result; // Обновление значения 'data' и обновление UI
      });
    } catch (e) {
      print('Ошибка: $e');
    }
  }

  Future<String> getSpecificDataFromServer(String nickname) async {
    var url = Uri.parse('http://localhost/local_db.php?id=$nickname');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      print('Данные успешно получены с сервера');
      print('Ответ от сервера: ${response.body}');
      return response.body;
    } else {
      print('Ошибка при получении данных с сервера');
      print('Статус код: ${response.statusCode}');
      print('Текст ошибки: ${response.body}');
      throw Exception('Ошибка при получении данных с сервера');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      height: 300,
      width: 400,
      child: Text(data), // Используйте полученные данные здесь
    );
  }
}
