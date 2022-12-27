import 'package:flutter/material.dart';
import './util/app_styles.dart';
// local import
import 'screens/bottom_bar_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ticket tree',
      theme: ThemeData(primaryColor: primary),
      home: const BottomBarWidget(),
    );
  }
}
