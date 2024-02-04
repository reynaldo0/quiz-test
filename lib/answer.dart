import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final VoidCallback selectHandler;
  
  Jawaban(this.selectHandler);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
            Color.fromARGB(255, 66, 66, 68),
          )),
          onPressed: selectHandler,
          child: const Text('Jawaban 1')),
    );
  }
}
