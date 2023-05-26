// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:pr1/common/constants/app_colors.dart';
// ignore: unused_import
import 'package:pr1/common/widgets/image_viwe.dart';
import 'block_body/allert_comment.dart';

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
                text: "GitHub",
                //  первый блок линк на гитхаб
                url: "assets/img/github.png",
              ),
              CusImage(
                // второй блок
                text: "BIO",
                url: "assets/img/man.png",
              ),
              CusImage(
                // третий блок
                text: "DS link",
                url: "assets/img/discord.png",
              ),
            ],
          ),
          // второй ряд
          Row(
            children: const [
              CusImage(
                // четвёртый блок
                url: "assets/img/send.png", text: 'TG link',
              ),
              CusImage(
                // пятый блок
                url: "assets/img/wallet.png", text: 'send me BTC ',
              ),
              CusImage(
                // шестой блок
                url: "assets/img/gamepad.png", text: 'my game ',
              ),
            ],
          ),
          // третий ряд
          Row(
            children: const [
              CusImage(
                // седбмой блок
                url: "assets/img/chat.png ", text: 'comment',
              ),
              CusImage(
                // восьмой блок
                url: "assets/img/spotify.png", text: 'my music',
              ),
              CusImage(
                // девятый блок
                url: "assets/img/info.png", text: 'project info ',
              ),
            ],
          ),
          const CommentMsg()
        ],
      ),
    );
  }
}
