import 'package:flutter/material.dart';

import 'currentText.dart';
import 'textControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var textIndex = 0;

  @override
  Widget build(BuildContext context) {
    const List<String> textStrings = [
      'Ei seu bunda mole!',
      'Falou comigo?',
      'Não gracinha, falei com a puta que te pariu',
      'Ainda bem!',
      'Até um outro dia',
      'Um momento amigo',
      'Fala o que você quer de uma vez, caralho!',
      'O que levas nesse caixão?',
      'Um monte de bosta',
      'E quem foi o cagão?',
      'Aposto que não foi o cu de sua mãe',
      'Você fala demais, amigo. Acabei de me aborrecer',
      '...',
    ];
    void nextText() => setState(() {
          textIndex < textStrings.length - 1 ? textIndex++ : textIndex = 0;
        });
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: Text(
              'Text changer',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          body: Center(
            child: Stack(
              children: <Widget>[
                CurrentText(
                  textStrings,
                  textIndex,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextControl(
                    nextText,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
