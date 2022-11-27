import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgerOptioin = <Widget>[
    HomeScreen(),
    const Text("Search"),
    const Text("Ticket"),
    const Text("Profile"),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgerOptioin[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: Color(0xFF526488),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                  label: "Airplane"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_people_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_people_filled),
                  label: "People")
            ]));
  }
}
