// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';


import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';
import 'package:pr1/common/constants/app_colors.dart';

class CommentWedget extends StatelessWidget {
  const CommentWedget({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Donat',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: const Text('Comment View'),
        ),
        body: Container(
          color: AppColors.secondary,

          child: Center(
            
            child:  HtmlWidget(
              '<iframe src="http://localhost/get_comments.html" frameborder="0" scrolling="yes" style="overflow-y: hidden;" width="1280" height="720"></iframe>',
              factoryBuilder: () => MyWidgetFactory(),
              
            ),
          ),
        ),
      ),
    );
  }
}
class MyWidgetFactory extends WidgetFactory with WebViewFactory {}

