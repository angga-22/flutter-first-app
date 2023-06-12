
import 'package:flutter/material.dart';

class InputComponent extends StatefulWidget {
  const InputComponent({super.key});

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  final TextEditingController _textEditingController = TextEditingController();
  String welcomeLabel = "";
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _onDone() {
    setState(() {
      welcomeLabel = _textEditingController.text;
    });
    FocusScope.of(context).unfocus();
  }
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox (
      widthFactor: 0.9,
      child: Column(
        children: [
         Row(
           children: [
             Expanded(
                 child:  TextField(
                   controller: _textEditingController,
                   onEditingComplete: _onDone,
                   decoration: const InputDecoration(
                     hintText: 'Enter text...',
                   ),
                 ),
             ),
             IconButton(
               icon: const Icon(Icons.clear),
               onPressed: () {
                 _textEditingController.clear();
               },
             ),
           ],
         ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hallo, $welcomeLabel'),
            ],
          )
        ],
      ),
    );
  }
}
