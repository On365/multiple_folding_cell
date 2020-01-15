import 'dart:math';

import 'package:flutter/material.dart';

import 'itemwidget/item.dart';

class ItemFoldDemo extends StatefulWidget {
  @override
  _ItemFoldDemoState createState() => _ItemFoldDemoState();
}

class _ItemFoldDemoState extends State<ItemFoldDemo> {

  final Color _backgroundColor = Color(0xFFf0f0f0);

  final ScrollController _scrollController = ScrollController();

  final List<int> _openItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: _buildAppBar(),
      body: Container(
        child: Flex(direction: Axis.vertical, children: <Widget>[
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              physics: BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Item(onClick: () => _handleClickedItem(index),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }

  bool _handleClickedItem(int clickedItem) {
    // Scroll to Item position
    // Add or remove the item of the list of open Items
    _openItems.contains(clickedItem) ? _openItems.remove(clickedItem) : _openItems.add(clickedItem);

    // Calculate heights of the open and closed elements before the clicked item
    double openItemsOffset = Item.nominalOpenHeight * _getOpenItemsBefore(clickedItem);
    double closedItemsOffset = Item.nominalClosedHeight * (clickedItem - _getOpenItemsBefore(clickedItem));

    double offset = openItemsOffset + closedItemsOffset - (Item.nominalClosedHeight * .5);

    // Scroll to the clicked element
    _scrollController.animateTo(max(0, offset), duration: Duration(seconds: 1), curve: Interval(.25, 1, curve: Curves.easeOutQuad));
    // Return true to stop the notification propagation
    return true;
  }

  _getOpenItemsBefore(int itemIndex) {
    // Search all indexes that are smaller to the current index in the list of indexes of open Items
    return _openItems.where((int index) => index < itemIndex).length;
  }

  Widget _buildAppBar() {
    Color appBarIconsColor = Color(0xFF212121);
    return AppBar(
      leading: Icon(Icons.arrow_back, color: appBarIconsColor),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Icon(Icons.more_horiz, color: appBarIconsColor, size: 28),
        )
      ],
      brightness: Brightness.light,
      backgroundColor: _backgroundColor,
      elevation: 0,
      title: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Text('Item Folding Cell'.toUpperCase(),
            textAlign: TextAlign.center,
            style:
                TextStyle(fontSize: 15, letterSpacing: 0.5, color: appBarIconsColor, fontFamily: 'OpenSans', fontWeight: FontWeight.bold))
      ),
    );
  }
}
