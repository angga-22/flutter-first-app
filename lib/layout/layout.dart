import 'dart:math';
import 'package:flutter/material.dart';
import 'package:angga_learning_flutter/widgets/molecules/bottom_nav_bar.dart';
import '../modules/dashboard/dashboard.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _idxs = 0;
  void onTapBottomNav(int idx){
    setState(() {
      _idxs = idx;
    });
  }

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  const List<Widget> _widgetOptions =<Widget>[
    Dashboard(),
     Text(
      'Index 2: School',
      style: optionStyle,
    ),
     Text(
      'Index 3: Tes',
      style: optionStyle,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: const Text('tes'),
        automaticallyImplyLeading: true,
      ),
      body: _widgetOptions.elementAt(_idxs),
        bottomNavigationBar:  BottomNavBar(
          onTapIdx: (idx) { onTapBottomNav(idx);},
        )
    );

  }
}
