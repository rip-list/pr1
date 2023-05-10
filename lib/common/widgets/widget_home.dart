// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:pr1/common/constants/app_colors.dart';
import 'package:pr1/common/widgets/float_bar.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:sizer/sizer_util.dart' show SizerUtil;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizerUtil().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Home',
              theme: ThemeData(
                primaryColor: AppColors.violet,
              ),
              home: const FloatBar(),
            );
          },
        );
      },
    );
  }
}
