// ignore: depend_on_referenced_packages
// ignore: unused_import, depend_on_referenced_packages
// ignore_for_file: no_logic_in_create_state



// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:pr1/common/constants/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';
class CusImage extends StatefulWidget {
  final String url;
  final double radius;
  final String text;
  final String urlsite;
  const CusImage({
    Key? key,
    required this.url,
    this.radius = 30.0,
    required this.text, required this.urlsite,
  }) : super(key: key);

  @override
  State<CusImage> createState() => _CusImageState(
        url: url,
        radius: radius,
        text: text,
        urlsite:urlsite,
      );
}

class _CusImageState extends State<CusImage> {
  late String url;
  late double radius;
  late String text;
  late String urlsite;
  _CusImageState({
    required this.url,
    this.radius = 30.0,
    required this.text, required  this.urlsite,
  });
  
  @override
  void initState() {
    super.initState();
    url = widget.url;
    radius = widget.radius;
    text = widget.text;
    urlsite = widget.urlsite;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: () async {
       Uri urlpars;
urlpars = Uri.parse(urlsite);
        if (await canLaunchUrl(urlpars)) {
          await launchUrl(urlpars);
        } else {
          throw 'Could not launch $url';
        }
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