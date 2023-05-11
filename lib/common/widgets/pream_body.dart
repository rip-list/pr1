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
          // первый ряд
          Row(
            children: const [
              CusImage(
                //  первый блок
                url: "assets/img/github.png",
              ),
              CusImage(
                // второй блок
                url: "assets/img/wallet.png",
              ),
              CusImage(
                // третий блок
                url: "assets/img/discord.png",
              ),
            ],
          ),
          // второй ряд
          Row(
            children: const [
              CusImage(
                // четвёртый блок
                url: "assets/img/github.png",
              ),
              CusImage(
                // пятый блок
                url: "assets/img/github.png",
              ),
              CusImage(
                // шестой блок
                url: "assets/img/github.png",
              ),
            ],
          ),
          // третий ряд
          Row(
            children: const [
              CusImage(
                // седбмой блок
                url: "assets/img/github.png",
              ),
              CusImage(
                // восьмой блок
                url: "assets/img/github.png",
              ),
              CusImage(
                // девятый блок
                url: "assets/img/github.png",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
