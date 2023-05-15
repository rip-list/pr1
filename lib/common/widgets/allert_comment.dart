// ignore_for_file: depend_on_referenced_packages

import 'package:pr1/common/constants/app_colors.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:pr1_services/database.dart';
import 'package:pr1_models/pr_model.dart';
import 'package:pr1_repositories/pr1_repositories.dart';

class CommentMsg extends StatefulWidget {
  const CommentMsg({super.key});

  @override
  State<CommentMsg> createState() => CommentMsgState();
}

class CommentMsgState extends State<CommentMsg> {
  final TextEditingController _teNickname = TextEditingController();
  final TextEditingController _teDescription = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      height: 400,
      width: 700,
      color: AppColors.transparentblue,
      child: Column(
        children: [
          TextField(
            // никнейм
            controller: _teNickname,
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
            controller: _teDescription,
            decoration: const InputDecoration(
              hintText: 'Input text comment',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
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
              onPressed: () {
                final pr = PrModel(id: 1, nickname:_teNickname.text , description: _teDescription.text,);
               Pr1Repositories().addItem(pr);
               Navigator.pop(context);
              },
              child: const Text('Send'),
            ),
          )
        ],
      ),
    );
  }
}
