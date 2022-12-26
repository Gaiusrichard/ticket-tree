import 'package:flutter/material.dart';
// local import
import './widgets/bottom_bar_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket tree',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BottomBarWidget(),
    );
  }
}
