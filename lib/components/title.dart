import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Text(
        'Deine Job\nwebsite',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 42, color: Colors.black),
      ),
    );
  }
}
