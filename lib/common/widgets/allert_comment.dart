import 'package:pr1/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CommentMsg extends StatefulWidget {
  const CommentMsg({super.key});

  @override
  State<CommentMsg> createState() => CommentMsgState();
}

class CommentMsgState extends State<CommentMsg> {
  TextEditingController teNickname = TextEditingController();
  TextEditingController teDescription = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
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
          TextField(
            controller: teDescription,
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
                final pr = DBpr
              },
              child: const Text('Send'),
            ),
          )
        ],
      ),
    );
  }
}
