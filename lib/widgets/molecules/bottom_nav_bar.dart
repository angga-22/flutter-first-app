import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final ValueChanged onTapIdx;
  const BottomNavBar({Key? key, required this.onTapIdx}) : super(key: key);

 @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
   int _selectedIdx = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIdx = index;
      widget.onTapIdx(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Company',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'University',
          ),
        ],
      currentIndex: _selectedIdx,
      selectedItemColor: Colors.deepOrangeAccent,
      onTap: _onItemTapped,
    );
  }
}
