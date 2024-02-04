import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  String questionsText;

  Questions(this.questionsText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width : double.infinity,
      // lebar dua kali lipat tanpa batas
      margin: EdgeInsets.all(10),
      // mengatur jarak antara Text dan appBar
      child: Text(
        questionsText,
        style: TextStyle(fontSize: 27),
        // Untuk memperbesar ukuran text
        textAlign: TextAlign.center,
        // untuk menengahkan text
      ),
    );
  }
}
