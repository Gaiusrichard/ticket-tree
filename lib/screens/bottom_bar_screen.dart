import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticket_tree/screens/home_screen.dart';
import 'package:ticket_tree/screens/profile_screen.dart';
import 'package:ticket_tree/screens/search_screen.dart';
import 'package:ticket_tree/screens/ticket_view.screen.dart';
import './practice_screen.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWigetState();
}

class _BottomBarWigetState extends State<BottomBarWidget> {
  static final List<Widget> _widgetScreens = <Widget>[
    HomeScreen(),
    SearchScreen(),
    ViewTicketScreen(),
    Profile()
  ];

  int _indexOfWidgetScreens = 0;
  void _selectWidgetScreenOnTap(int index) {
    setState(() {
      _indexOfWidgetScreens = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetScreens[_indexOfWidgetScreens],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectWidgetScreenOnTap,
          currentIndex: _indexOfWidgetScreens,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: 'Ticket'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: 'Profile')
          ]),
    );
  }
}
