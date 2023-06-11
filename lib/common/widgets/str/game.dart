// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:pr1/common/widgets/tetris.dart';

import '../../constants/app_colors.dart';


class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My tetris game'),
          backgroundColor: AppColors.primary, 
        ),
        
        body: const Center(
          child: TetrisGame(),
        ),
      ),
    );
  }
}