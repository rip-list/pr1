import 'package:pr1/common/constants/app_colors.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

class ListUI extends StatelessWidget {
  const ListUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
        primaryColor: AppColors.violet,
      ),
      home: SizedBox(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("send"),
          ),
          body: Image.network(
              "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8900201e-61b9-435d-96d6-fff2f6b21ddf/df2nxdl-5d089756-c76a-4806-9f34-834bc98d6432.png/v1/fill/w_894,h_894,q_70,strp/mobile_legends_bang_bang__melissa_by_skillerart_df2nxdl-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiJcL2ZcLzg5MDAyMDFlLTYxYjktNDM1ZC05NmQ2LWZmZjJmNmIyMWRkZlwvZGYybnhkbC01ZDA4OTc1Ni1jNzZhLTQ4MDYtOWYzNC04MzRiYzk4ZDY0MzIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.NXUF_wSDB4__1Gc29HRota_pWyW_040jh4jIBTLiuSM"),
          backgroundColor: AppColors.transparent,
        ),
      ),
    );
  }
}
