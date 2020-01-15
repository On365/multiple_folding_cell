import 'package:flutter/material.dart';

import 'demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const title = 'Item Fold Demo';
    return MaterialApp(
      title: title,
      home: ItemFoldDemo(),
    );
  }
}
