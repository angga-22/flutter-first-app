import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});
  @override
  State<MyTabBar> createState() => _MyTabBarState();
}


class _MyTabBarState extends State<MyTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  TabBar(
        controller: _tabController,
        tabs: const [
          Tab(
            text: 'Tab 1asd',
          ),
          Tab(
            text: 'Tab 2',
          ),
          Tab(
            text: 'Tab 3',
          ),
        ],
    )

    );
  }
}