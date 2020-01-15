import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_fold/itemfaces/bottom.dart';
import 'package:ticket_fold/itemfaces/front.dart';
import 'package:ticket_fold/itemfaces/middle.dart';
import 'package:ticket_fold/itemfaces/top.dart';

import 'folding_item.dart';

class Item extends StatefulWidget {
  //Somatório de todas as faces
  //Sum of all faces
  static const double nominalOpenHeight = 440;
  static const double nominalClosedHeight = 140;
  final Function onClick;

  const Item({Key key,  @required this.onClick})
      : super(key: key);
  @override
  State<StatefulWidget> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  Widget frontCard;
  Widget topCard;
  Widget middleCard;
  Widget bottomCard;
  bool _isOpen;

  Widget get backCard => Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0), color: Color(0xffdce6ef)));

  @override
  void initState() {
    super.initState();
    _isOpen = false;
    frontCard = front();
    middleCard = middle();
    bottomCard = bottom();
  }

  @override
  Widget build(BuildContext context) {
    return FoldingTicket(
        entries: _getEntries(), isOpen: _isOpen, onClick: _handleOnTap);
  }

  List<FoldEntry> _getEntries() {
    return [
      FoldEntry(height: 140.0, front: topCard),
      FoldEntry(height: 140.0, front: middleCard, back: frontCard),
      FoldEntry(height: 80.0, front: bottomCard, back: frontCard),
      //Outros Componentes podem ser adicionados
      //Other Components Can Be Added
      FoldEntry(height: 80.0, front: _containerA(), back: _back()),
    ];
  }

  void _handleOnTap() {
    widget.onClick();
    setState(() {
      _isOpen = !_isOpen;
      topCard = top();
    });
  }
}

//Ajustar de acordo com a sua necessidade
// Adjust according to your need
Widget _back() {
  return Container(
    width: double.infinity,
    height: 200,
    color: Colors.blue,
  );
}

Widget _containerA() {
  return Container(
    width: double.infinity,
    height: 200,
    color: Colors.white,
    child: Image.network(
        'https://images.pexels.com/photos/949587/pexels-photo-949587.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        fit: BoxFit.cover),
  );
}


