import 'package:flutter/material.dart';

class SnakeGamePage extends StatefulWidget {
  const SnakeGamePage({super.key});

  @override
  State<SnakeGamePage> createState() => _SnakeGamePageState();
}

class _SnakeGamePageState extends State<SnakeGamePage> {
  int row = 20, column = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: _buildGameView()),
          _buildGameControl(),
        ],
      ),
    );
  }

  Widget _buildGameView() {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: column),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.red),
        );
      },
      itemCount: row * column,
    );
  }

  Widget _buildGameControl() {
    return Container();
  }

  Color fillBoxColor() {
    return Colors.red;
  }
}
