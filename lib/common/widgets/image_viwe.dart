// ignore: depend_on_referenced_packages
// ignore: unused_import, depend_on_referenced_packages
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:pr1/common/constants/app_colors.dart';

class CusImage extends StatefulWidget {
  final String url;
  final double radius;
  const CusImage({
    super.key,
    required this.url,
    this.radius = 30.0,
  });

  @override
  State<CusImage> createState() => _CusImageState();
}

class _CusImageState extends State<CusImage> {
  late String url;
  late double radius;
  @override
  void initState() {
    super.initState();
    url = "https://ibb.co/P5F67Yg";
    radius = 30.0;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.secondary,
      content: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(radius),
          boxShadow: List.empty(growable: true),
          gradient: const LinearGradient(
              end: Alignment.topRight,
              begin: Alignment.bottomLeft,
              colors: [AppColors.blue, AppColors.violet]),
        ),
        child: Image.network(url),
      ),
    );
  }
}

widget({required List<Widget> children}) {}
