import 'package:flutter/material.dart';

class ColorGameScreen extends StatefulWidget {
  const ColorGameScreen({super.key});

  @override
  State<ColorGameScreen> createState() => _ColorGameScreenState();
}

class _ColorGameScreenState extends State<ColorGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: _getBody(),
    );
  }

  AppBar _getAppBar() {
    return AppBar(
      title: const Text(
        'Gavalley Game',
        style: TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(255, 255, 255, 1),
            fontWeight: FontWeight.bold),
      ),
      elevation: 2,
      shadowColor: Colors.cyan[900],
      backgroundColor: Colors.cyanAccent[400],
    );
  }

  _getBody() {
    MaterialColor colorSelected = Colors.amber;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: colorSelected),
            child: Text('$colorSelected'),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
