import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(first());

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // untuk menghapus watermak bawaan flutter
      home: Second(),
    );
  }
}

class Second extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SecondState();
  }
}

class _SecondState extends State<Second> {
  var _questionsindex = 0;
  // berarti dimulai dari 0 yang mana diambil dari var question

  void _jawaban() {
    setState(() {
      _questionsindex = _questionsindex + 1;
    });
    print(_questionsindex);
    // print berarti apa yang ingin di tampilkan
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'pertanyaan': 'Apa warna kesukaan mu?',
        'jawaban': ['merah', 'kuning', 'ijo'],
      },
      {
        'pertanyaan': 'Apa makanan kesukaan mu',
        'jawaban': ['pizza', 'donat', 'buah'],
      },
      {
        'pertanyaan': 'Apa minuman kesukaan mu?',
        'jawaban': ['esteh', 'jus', 'kopi'],
      }
    ];
    // text dari pertanyaan yang akan ditampilkan dimulai dari 0

    return Scaffold(
      // Scaffold berarti bagian keseluruhan layar yang akan di tampilkan
      backgroundColor: Colors.grey,
      // untuk mengatur background bagian body
      appBar: AppBar(
        title: const Text('Reynaldo Apps'),
        // untuk mengatur title bar
        backgroundColor: Colors.brown,
        // untuk mengatur background bar
      ),

      body: Column(
        children: [
          Questions(
            questions[_questionsindex]['pertanyaan'],
          ),
          // Text Questions Menuju ke file kedua dart atau "question.dart"

          questions[_questionsindex]['jawaban'].map((answer) {
            return Jawaban(answer);
          })
        ],
      ),
    );
  }
}
