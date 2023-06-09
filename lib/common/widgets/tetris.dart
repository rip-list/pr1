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
  // Определение размеров игрового поля
  final int rows = 10;
  final int columns = 5;

  // Инициализация матрицы игрового поля
  List<List<Color?>> gameGrid = List.generate(
    10, // Количество строк
    (index) => List<Color?>.filled(5, null), // Количество столбцов
  );

  // Позиция и цвет текущего падающего блока
  late Point<int> currentBlockPosition;
  late Color currentBlockColor;

  // Таймер для анимации
  late Timer timer;

  // Инициализация игры
  @override
  void initState() {
    super.initState();
    // Запуск таймера для анимации
    timer = Timer.periodic(const Duration(milliseconds: 300), (_) {
      setState(() {
        _moveBlockDown();
      });
    });

    // Начальная позиция и цвет падающего блока
    currentBlockPosition = Point<int>(2, 0);
    currentBlockColor = Colors.blue;

    // Установка фокуса на игровом поле для обработки клавиатурных событий
    FocusScope.of(context).requestFocus();
  }

  // Освобождение ресурсов таймера при завершении игры
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  // Функция для перемещения падающего блока вниз
  void _moveBlockDown() {
    setState(() {
      // Удаление текущего блока из предыдущей позиции
      gameGrid[currentBlockPosition.y][currentBlockPosition.x] = null;

      // Проверка на достижение нижней границы поля
      if (currentBlockPosition.y + 1 < rows) {
        // Перемещение блока вниз
        currentBlockPosition = Point<int>(currentBlockPosition.x, currentBlockPosition.y + 1);
      } else {
        // Если блок достиг нижней границы поля, вернуть его вверху
        currentBlockPosition = Point<int>(currentBlockPosition.x, 0);
      }

      // Добавление блока в новую позицию
      gameGrid[currentBlockPosition.y][currentBlockPosition.x] = currentBlockColor;
    });
  }

  // Функция для перемещения падающего блока влево
  void _moveBlockLeft() {
    setState(() {
      // Проверка на достижение левой границы поля
      if (currentBlockPosition.x - 1 >= 0) {
        // Удаление текущего блока из предыдущей позиции
        gameGrid[currentBlockPosition.y][currentBlockPosition.x] = null;

        // Перемещение блока влево
        currentBlockPosition = Point<int>(currentBlockPosition.x - 1, currentBlockPosition.y);

        // Добавление блока в новую позицию
        gameGrid[currentBlockPosition.y][currentBlockPosition.x] = currentBlockColor;
      }
    });
  }

  // Функция для перемещения падающего блока вправо
  void _moveBlockRight() {
    setState(() {
      // Проверка на достижение правой границы поля
      if (currentBlockPosition.x + 1 < columns) {
        // Удаление текущего блока из предыдущей позиции
        gameGrid[currentBlockPosition.y][currentBlockPosition.x] = null;

        // Перемещение блока вправо
        currentBlockPosition = Point<int>(currentBlockPosition.x + 1, currentBlockPosition.y);

        // Добавление блока в новую позицию
        gameGrid[currentBlockPosition.y][currentBlockPosition.x] = currentBlockColor;
      }
    });
  }

  // Обработка нажатий клавиш
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

  // Отрисовка игрового поля
  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: FocusNode(),
      onKey: _handleKey,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: columns,
        ),
        itemCount: rows * columns,
        itemBuilder: (context, index) {
          final row = index ~/ columns;
          final col = index % columns;
          final color = gameGrid[row][col];
          return Container(
            color: color,
          );
        },
      ),
    );
  }
}
