// ignore_for_file: avoid_print, depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
Future<String?> postDataToServer(String nickname, String description) async {
  var url = Uri.parse('http://localhost/local_db.php');

  var response = await http.post(url, body: {
    'nickname': nickname,
    'description': description,
  });

  if (response.statusCode == 200) {
    print('Данные успешно отправлены на сервер');
    print('Ответ от сервера: ${response.body}');
    return response.body;
  } else {
    print('code: ${response.statusCode}');
    print('error code  ${response.body}');
    return null;
  }
}
Future<String> getnicknameDataFromServer(String nickname) async {
  var url = Uri.parse(
      'http://localhost/local_db.php?nickname=$nickname'); // Обновленный URL с параметром id

  var response = await http.get(url);

  if (response.statusCode == 200) {
    print('Данные успешно получены с сервера');
    print('Ответ от сервера: ${response.body}');
    return response.body;
  } else {
    print('Ошибка при получении данных с сервера');
    print('Статус код: ${response.statusCode}');
    print('Текст ошибки: ${response.body}');
    throw("");
  }
}

Future<String> getdescriptionSpecificDataFromServer() async {
  var url = Uri.parse(
      'http://localhost/local_db.php?description'); // Обновленный URL с параметром id

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
