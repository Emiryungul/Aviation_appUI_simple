import 'package:flutter/material.dart';
import 'Pages/Home.dart';
import 'Pages/profile.dart';
import 'Pages/search.dart';
import 'Pages/ticket.dart';


class Pagemain extends StatefulWidget {
  const Pagemain({super.key});

  @override
  State<Pagemain> createState() => _PagemainState();
}

class _PagemainState extends State<Pagemain> {
  int _selectedIndex = 0;

  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    Search(),
    Profile(),
    Ticket(),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        selectedItemColor: Colors.green.shade600,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        elevation: 10,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket),
            label: 'Tickets',
          ),
        ],
      ),

    );

  }
}