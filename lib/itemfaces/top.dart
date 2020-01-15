import 'package:flutter/material.dart';
import 'package:ticket_fold/itemfaces/detail.dart';

Widget top() {
  return Builder(builder: (context) {
    return Stack(fit: StackFit.expand, children: <Widget>[
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          'https://image.freepik.com/fotos-gratis/fundo-de-textura-preto-escuro_24837-267.jpg',
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            detail(cor: Colors.white),
          ],
        ),
      ),
    ]);
  });
}