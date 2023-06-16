// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TetrisGame extends StatefulWidget {
  const TetrisGame({Key? key}) : super(key: key);

  @override
  TetrisGameState createState() => TetrisGameState();
}

class TetrisGameState extends State<TetrisGame> {
  final int rows = 20;
  final int columns = 5;
  List<List<Color?>> gameGrid = List.generate(
    20,
    (index) => List<Color?>.filled(5, null),
  );

  late Point<int> currentBlockPosition;
  late Color currentBlockColor;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 300), (_) {
      setState(() {
        _moveBlockDown();
      });
    });

    currentBlockPosition = const Point<int>(2, 0);
    currentBlockColor = Colors.blue;

    FocusScope.of(context).requestFocus();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void _moveBlockDown() {
    setState(() {
      gameGrid[currentBlockPosition.y][currentBlockPosition.x] = null;
      if (currentBlockPosition.y + 1 < rows) {
        currentBlockPosition = Point<int>(currentBlockPosition.x, currentBlockPosition.y + 1);
      } else {
        currentBlockPosition = Point<int>(currentBlockPosition.x, 0);
      }
      gameGrid[currentBlockPosition.y][currentBlockPosition.x] = currentBlockColor;
    });
  }

  void _moveBlockLeft() {
    setState(() {
      if (currentBlockPosition.x - 1 >= 0) {
        gameGrid[currentBlockPosition.y][currentBlockPosition.x] = null;
        currentBlockPosition = Point<int>(currentBlockPosition.x - 1, currentBlockPosition.y);
        gameGrid[currentBlockPosition.y][currentBlockPosition.x] = currentBlockColor;
      }
    });
  }

  void _moveBlockRight() {
    setState(() {
      if (currentBlockPosition.x + 1 < columns) {
        gameGrid[currentBlockPosition.y][currentBlockPosition.x] = null;
        currentBlockPosition = Point<int>(currentBlockPosition.x + 1, currentBlockPosition.y);
        gameGrid[currentBlockPosition.y][currentBlockPosition.x] = currentBlockColor;
      }
    });
  }

  void _handleKey(RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
        _moveBlockDown();
      } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
        _moveBlockLeft();
      } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
        _moveBlockRight();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: FocusNode(),
      onKey: _handleKey,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final blockSize = constraints.maxWidth / columns;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns,
              childAspectRatio: 1.0,
            ),
            itemCount: rows * columns,
            itemBuilder: (context, index) {
              final row = index ~/ columns;
              final col = index % columns;
              final color = gameGrid[row][col];
              return Container(
                width: blockSize,
                height: blockSize,
                color: color,
              );
            },
          );
        },
      ),
    );
  }
}
