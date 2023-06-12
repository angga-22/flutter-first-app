import 'package:angga_learning_flutter/widgets/atoms/input.dart';
import 'package:flutter/material.dart';
import '../../widgets/atoms/button.dart';
import '../../widgets/molecules/tab_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>{
  int _counter = 0;

  String warning = "";
  void _onCounter(String id) {
    setState(() {
      if(id == 'add') {
        _counter++;
      } else {
        _counter--;
      }
      if(_counter < 0){
        _counter = 100;
        warning = "balik ke 100 ya";
      }
      if(_counter > 100) {
        _counter = 0;
        warning = "balik ke 0 ya";
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const MyTabBar(),
          const Spacer(),
          const Text(
            'hey angga, kamu memencet tombol:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(warning),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Buttons(
                    text: '+',
                    onPressed: () {
                      _onCounter('add');
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Buttons(
                    text: '-',
                    onPressed: () {
                      _onCounter('minus');
                    },
                  ),
                ),
              ),
            ],
          ),
          const InputComponent(),
          const Spacer(),
        ],
      ),
    );
  }
}