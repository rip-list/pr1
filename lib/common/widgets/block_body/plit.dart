// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';


import '../../constants/app_colors.dart';

class CusPlite extends StatefulWidget {
  final String url;
  final double radius;
  final String text;
  final Widget page;

  const CusPlite({
    Key? key,
    required this.url,
    this.radius = 30.0,
    required this.text,
    required this.page,
  }) : super(key: key);

  @override
  CusPliteState createState() => CusPliteState();
}

class CusPliteState extends State<CusPlite> {
  late bool isHovered;

  @override
  void initState() {
    super.initState();
    isHovered = false;
  }

  

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: ()async{
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.page),
          );
        },
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.radius),
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ]
                : [],
            gradient: const LinearGradient(
              end: Alignment.topRight,
              begin: Alignment.bottomLeft,
              colors: [Colors.blue, AppColors.violet],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.scale(
                scale: isHovered ? 1.1 : 1.0,
                child: Image(
                  image: AssetImage(widget.url),
                  color: Colors.black,
                  height: isHovered ? 80 : 70,
                  width: isHovered ? 80 : 70,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.text,
                textAlign: TextAlign.center,
                style: const TextStyle(fontFamily: "Aref"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
