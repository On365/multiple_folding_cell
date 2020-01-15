import 'package:flutter/material.dart';

Widget detail({Color cor}) {
  return Column(children: <Widget>[
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('Duração',
            style: TextStyle(fontWeight: FontWeight.bold, color: cor)),
        SizedBox(
          width: 30,
        ),
        Text('Total',
            style: TextStyle(fontWeight: FontWeight.bold, color: cor)),
        SizedBox(
          width: 30,
        ),
        Text('Avaliação',
            style: TextStyle(fontWeight: FontWeight.bold, color: cor)),
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text('10m', style: TextStyle(fontWeight: FontWeight.bold, color: cor)),
        Text('\$ ${1500.00}',
            style: TextStyle(fontWeight: FontWeight.bold, color: cor)),
        Text('9.0', style: TextStyle(fontWeight: FontWeight.bold, color: cor)),
      ],
    )
  ]);
}