// ignore_for_file: avoid_print, depend_on_referenced_packages, unused_import

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<String?> sendDataToServer(String nickname, String description) async {
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
    print('Ошибка при отправке данных на сервер');
    print('Статус код: ${response.statusCode}');
    print('Текст ошибки: ${response.body}');
    return null;
  }
}
