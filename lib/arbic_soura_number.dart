import 'package:flutter/material.dart';
import 'package:quran_app/to_arabic_no_converter.dart';

class ArabicSouraNumber extends StatelessWidget {
  final int i;
  const ArabicSouraNumber({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    return Text(
      "\uFD3E" + (i + 1).toString().toArabicNumbers + "\uFD3F",
      style: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontFamily: 'me_quran',
          fontSize: 20,
          shadows: [
            Shadow(
              offset: Offset(.5, .5),
              blurRadius: 1.0,
              color: Colors.amberAccent,
            ),
          ]),
    );
  }
}
