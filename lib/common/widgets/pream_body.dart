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
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        children: [
          Row(
            children: const [
              CusImage(
                //  первый блок
                url:
                    "https://cdn.icon-icons.com/icons2/2389/PNG/256/github_logo_icon_145252.png",
              ),
              CusImage(
                // второй блок
                url:
                    "https://cdn.icon-icons.com/icons2/3956/PNG/512/caffeine_coffee_cup_beverage_drink_cafe_icon_252287.png",
              ),
              CusImage(
                // третий блок
                url: "https://ibb.co/P5F67Yg",
              ),
            ],
          ),
          Row(
            children: const [
              CusImage(
                // четвёртый блок
                url: "https://ibb.co/P5F67Yg",
              ),
              CusImage(
                // пятый блок
                url: "https://ibb.co/P5F67Yg",
              ),
              CusImage(
                // шестой блок
                url: "https://ibb.co/P5F67Yg",
              ),
            ],
          ),
          Row(
            children: const [
              CusImage(
                // седбмой блок
                url: "https://ibb.co/P5F67Yg",
              ),
              CusImage(
                // восьмой блок
                url: "https://ibb.co/P5F67Yg",
              ),
              CusImage(
                // девятый блок
                url: "https://ibb.co/P5F67Yg",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
