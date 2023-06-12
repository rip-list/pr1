// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';


import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';
import 'package:pr1/common/constants/app_colors.dart';

class DonatUI extends StatelessWidget {
  const DonatUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Donat',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: const Text('Donat me plz'),
        ),
        body: Container(
          color: AppColors.secondary,

          child: Center(
            
            child:  HtmlWidget(
              '<iframe src="https://nowpayments.io/embeds/donation-widget?api_key=7WDT95C-R6MM6DZ-J3W1EYK-XMJTW3J&source=lk_donation&medium=referral" frameborder="0" scrolling="no" style="overflow-y: hidden;" width="354" height="680"></iframe>',
              factoryBuilder: () => MyWidgetFactory(),
              
            ),
          ),
        ),
      ),
    );
  }
}
class MyWidgetFactory extends WidgetFactory with WebViewFactory {}
>>>>>>> f028c5c8705ef5982a642c7459343a3d82c32677
