import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/app_colors.dart';

class CusImage extends StatefulWidget {
  final String url;
  final double radius;
  final String text;
  final String urlsite;

  const CusImage({
    Key? key,
    required this.url,
    this.radius = 30.0,
    required this.text,
    required this.urlsite,
  }) : super(key: key);

  @override
  State<CusImage> createState() => _CusImageState();
}

class _CusImageState extends State<CusImage> {
  late bool isHovered;

  @override
  void initState() {
    super.initState();
    isHovered = false;
  }

  Future<void> launchURL(String url) async {
    Uri urls = Uri.parse(url);
    if (await canLaunchUrl(urls)) {
      await launchUrl(urls);
    } else {
      throw 'Could not launch $url';
    }
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
        onTap: () async {
          await launchURL(widget.urlsite);
        },
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.radius),
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      color: AppColors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ]
                : [],
            gradient: const LinearGradient(
              end: Alignment.topRight,
              begin: Alignment.bottomLeft,
              colors: [AppColors.blue, AppColors.violet],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(widget.url),
                color: Colors.black,
                height: isHovered ? 80 : 50,
                width: isHovered ? 80 : 50,
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
