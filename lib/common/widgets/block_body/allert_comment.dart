// ignore_for_file: depend_on_referenced_packages

import 'package:pr1/common/constants/app_colors.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:pr1/common/routes/database.dart';

class CommentMsg extends StatefulWidget {
  const CommentMsg({super.key});

  @override
  State<CommentMsg> createState() => CommentMsgState();
}

class CommentMsgState extends State<CommentMsg> {
  final TextEditingController teNickname = TextEditingController();
  final TextEditingController teDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      height: 400,
      width: 700,
      color: AppColors.transparentblue,
      child: Column(
        children: [
const SizedBox(
            width: 40,
            height: 40,
          ),

          const Text("Вы можете оставить свой комментарий \n    о этом сайте  в даном поле ", style: TextStyle( fontFamily: "Sensal"), ),
          
          const SizedBox(
            width: 40,
            height: 40,
          ),
          TextField(
            // никнейм
            controller: teNickname,
            decoration: const InputDecoration(
              hintText: 'Input Nick',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 40,
            height: 40,
          ),
          TextField(
            // текст комментария
            controller: teDescription,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              hintText: 'Input text comment',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ),
           const SizedBox(
            width: 40,
            height: 40,
          ),
          Container(
            width: 300,
            height: 50,
            decoration: const BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: ElevatedButton(
              onPressed: () async {
                // вставка значения в бд
                postDataToServer(teNickname.text, teDescription.text);
                // ignore: avoid_print
                teDescription.clear();
                teNickname.clear();
              },
              child: const Text('Send'),
            ),
          )
        ],
      ),
    );
  }
}
