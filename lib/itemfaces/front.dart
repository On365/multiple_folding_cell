import 'package:flutter/material.dart';
import 'package:ticket_fold/itemfaces/detail.dart';

Widget front() {
  return Builder(builder: (context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        child: Row(children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: Colors.deepPurple,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('12',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Text('Jun',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '09:09',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text('Responsável: Fulano de Tal',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black87)),
                        Text('Indicado por: Beltrano',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black87)),
                        detail(cor: Colors.black38),
                      ]),
                )),
          ),
        ]),
      ),
    );
  });
}
