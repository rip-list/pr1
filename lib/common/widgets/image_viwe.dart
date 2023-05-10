// ignore: depend_on_referenced_packages
// ignore: unused_import, depend_on_referenced_packages
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:pr1/common/constants/app_colors.dart';

class CusImage extends StatefulWidget {
  final String url;

  const CusImage({
    super.key,
    required this.url,
  });

  @override
  State<CusImage> createState() => _CusImageState();
}

class _CusImageState extends State<CusImage> {
  late String url;

  @override
  void initState() {
    super.initState();
    url = "";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        boxShadow: List.empty(growable: true),
        gradient: const LinearGradient(
            end: Alignment.topRight,
            begin: Alignment.bottomLeft,
            colors: [AppColors.blue, AppColors.violet]),
      ),
      child: Image.network(url),
    );
  }
}

widget({required List<Widget> children}) {}
