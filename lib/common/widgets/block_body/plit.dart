// ignore: depend_on_referenced_packages
// ignore: unused_import, depend_on_referenced_packages
// ignore_for_file: no_logic_in_create_state, prefer_typing_uninitialized_variables



// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:pr1/common/constants/app_colors.dart';
// import 'package:url_launcher/url_launcher.dart';
class CusPlite extends StatefulWidget {
  final String url;
  final double radius;
  final String text;
  final page;


   const CusPlite({
    Key? key,
    required this.url,
    this.radius = 30.0,
    required this.text, required this.page,  
  }) : super(key: key);

  @override
  State<CusPlite> createState() => _CusPliteState(
        url: url,
        radius: radius,
        text: text,
        page:page
      );
}

class _CusPliteState extends State<CusPlite> {
  late String url;
  late double radius;
  late String text;
  final page;
  _CusPliteState({
    required this.url,
    this.radius = 30.0,
    required this.text, required this.page, 
  });
  
  @override
  void initState() {
    super.initState();
    url = widget.url;
    radius = widget.radius;
    text = widget.text;
    
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: () async {
  
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
},
      
      child: AlertDialog(
        title: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontFamily: "Aref"),
        ),
        backgroundColor: AppColors.secondary,
        content: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(radius),
            boxShadow: const [],
            gradient: const LinearGradient(
              end: Alignment.topRight,
              begin: Alignment.bottomLeft,
              colors: [AppColors.blue, AppColors.violet],
            ),
          ),
          child: Image(
            image: AssetImage(url),
            color: AppColors.black,
            height: 50,
            width: 50,
          ),
        ),
      ),
    );
  }
}