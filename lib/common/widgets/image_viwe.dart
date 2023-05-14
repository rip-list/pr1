// ignore: depend_on_referenced_packages
// ignore: unused_import, depend_on_referenced_packages
import 'dart:html';

// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:pr1/common/constants/app_colors.dart';

class CusImage extends StatefulWidget {
  final String url;
  final double radius;
  final String text;
  const CusImage({
    super.key,
    required this.url,
    this.radius = 30.0,
    this.text = "text",
  });

  @override
  // ignore: no_logic_in_create_state
  State<CusImage> createState() => _CusImageState(
        url: url,
        radius: radius,
        text: text,
      );
}

class _CusImageState extends State<CusImage> {
  late String url;
  late double radius;
  late String text;
  @override
  void initState() {
    super.initState();
    url = url;
    radius = 30.0;
    text = "text";
  }

  _CusImageState({
    required this.url,
    this.radius = 30.0,
    this.text = "text",
  });
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontFamily: "Aref"),
      ),
      backgroundColor: AppColors.secondary,
      content: Container(
        width: 200,
        height: 200,

        // внешний вид блоков с информацией
        // TODO надо поменять на кнопку  мб
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(radius),
          boxShadow: List.empty(growable: true),
          gradient: const LinearGradient(
            end: Alignment.topRight,
            begin: Alignment.bottomLeft,
            colors: [AppColors.blue, AppColors.violet],
          ),
        ),
        child: Image(
          // fit: BoxFit.scaleDown,
          image: AssetImage(url),
        ),
      ),
    );
  }
}

widget({required List<Widget> children}) {}
