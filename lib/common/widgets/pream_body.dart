// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:pr1/common/constants/app_colors.dart';
// ignore: unused_import
import 'package:pr1/common/widgets/image_viwe.dart';

class PreamBody extends StatefulWidget {
  const PreamBody({super.key});

  @override
  State createState() => PreamBodyState();
}

class PreamBodyState extends State<PreamBody> {
  @override
  void initState() {
    // TODO БЛЯТЬ: основное дело проделать надо тут
    // короче, блоки у нас основное Column->Row->AlertDialog->CusImg;
    // вроде так, но хз,
    // 9 блоков
    // блок свича будет на кнопке верхней, так что зафиг девять без понятия
    // Я ИДИОТ ЗАЧЕМ Я НА ЭТО ПОДПИСЫВАЮСЬ
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // TODO подключаем адаптивную верстку
      child: Row(
        children: const [
          AlertDialog(
            backgroundColor: AppColors.secondary,
            content: CusImage(
              url:
                  "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8900201e-61b9-435d-96d6-fff2f6b21ddf/df2nxdl-5d089756-c76a-4806-9f34-834bc98d6432.png/v1/fill/w_894,h_894,q_70,strp/mobile_legends_bang_bang__melissa_by_skillerart_df2nxdl-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiJcL2ZcLzg5MDAyMDFlLTYxYjktNDM1ZC05NmQ2LWZmZjJmNmIyMWRkZlwvZGYybnhkbC01ZDA4OTc1Ni1jNzZhLTQ4MDYtOWYzNC04MzRiYzk4ZDY0MzIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.NXUF_wSDB4__1Gc29HRota_pWyW_040jh4jIBTLiuSM",
            ),
          ),
          AlertDialog(
            backgroundColor: AppColors.secondary,
            content: CusImage(
              url:
                  "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8900201e-61b9-435d-96d6-fff2f6b21ddf/df2nxdl-5d089756-c76a-4806-9f34-834bc98d6432.png/v1/fill/w_894,h_894,q_70,strp/mobile_legends_bang_bang__melissa_by_skillerart_df2nxdl-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiJcL2ZcLzg5MDAyMDFlLTYxYjktNDM1ZC05NmQ2LWZmZjJmNmIyMWRkZlwvZGYybnhkbC01ZDA4OTc1Ni1jNzZhLTQ4MDYtOWYzNC04MzRiYzk4ZDY0MzIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.NXUF_wSDB4__1Gc29HRota_pWyW_040jh4jIBTLiuSM",
            ),
          ),
          AlertDialog(
            backgroundColor: AppColors.secondary,
            content: CusImage(
              url:
                  "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8900201e-61b9-435d-96d6-fff2f6b21ddf/df2nxdl-5d089756-c76a-4806-9f34-834bc98d6432.png/v1/fill/w_894,h_894,q_70,strp/mobile_legends_bang_bang__melissa_by_skillerart_df2nxdl-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiJcL2ZcLzg5MDAyMDFlLTYxYjktNDM1ZC05NmQ2LWZmZjJmNmIyMWRkZlwvZGYybnhkbC01ZDA4OTc1Ni1jNzZhLTQ4MDYtOWYzNC04MzRiYzk4ZDY0MzIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.NXUF_wSDB4__1Gc29HRota_pWyW_040jh4jIBTLiuSM",
            ),
          ),
        ],
      ),
    );
  }
}
