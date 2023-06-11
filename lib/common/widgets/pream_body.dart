// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:pr1/common/constants/app_colors.dart';
import 'package:pr1/common/widgets/block_body/plit.dart';
// import 'package:pr1/common/widgets/block_body/comment_list.dart';
// ignore: unused_import
import 'package:pr1/common/widgets/image_viwe.dart';
import 'package:pr1/common/widgets/str/bio.dart';
import 'package:pr1/common/widgets/str/donat.dart';
import 'package:pr1/common/widgets/str/game.dart';
import 'package:pr1/common/widgets/str/spotify.dart';
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
    return  FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        children: [
          const SizedBox(height: 100, ),
          // первый ряд
          Row(
            children:  const [
             CusImage(
                text: "GitHub",
                //  первый блок линк на гитхаб
                url: "assets/img/github.png", urlsite: "https://github.com/rip-list",
              ),SizedBox(width: 60, ),
             CusPlite(
                // второй блок
                text: "BIO",
                url: "assets/img/man.png",  page: Bio(),
              ),SizedBox(width: 60, ),
              CusImage(
                // третий блок
                text: "DS link",
                url: "assets/img/discord.png", urlsite: "https://discordapp.com/users/730973396783071264/",
              ),
            ],
          ),
          const SizedBox(height: 60, ),
          // второй ряд
          Row(
            children: const [
              CusImage(
                // четвёртый блок
                url: "assets/img/send.png", text: 'TG link', urlsite: "https://t.me/user_i3wm",
              ),
              SizedBox(width: 60, ),
              CusPlite(
                // пятый блок
                url: "assets/img/wallet.png", text: 'send me BTC ', page: DonatUI(),
              ),SizedBox(width: 60, ),
              CusPlite(
                // шестой блок
                url: "assets/img/gamepad.png", text: 'my game ', page: Game(),
              ),
            ],
          ),
          // третий ряд
          const SizedBox(height: 60, ),
          Row(
            children: const [
              CusImage(
                // седбмой блок
                url: "assets/img/chat.png", text: 'comment', urlsite: '',
              ),SizedBox(width: 60, ),
              CusPlite(
                // восьмой блок
                url: "assets/img/spotify.png", text: 'my music', page: Spotify(),
              ),
              SizedBox(width: 60, ),
              CusImage(
                // девятый блок
                url: "assets/img/info.png", text: 'project info \n Comming Soon ', urlsite: "https://github.com/rip-list/pr1",
              ),
            ],
          ),
          const SizedBox(width: 100, ),
          const CommentMsg(),
          
        ],
      ),
    );
  }
}
