import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BellPage(),
      ),
    );

class BellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: EightBall(),
    );
  }
}

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int ballNumber = Random().nextInt(5) + 1;

  void randomizeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: randomizeBall,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
