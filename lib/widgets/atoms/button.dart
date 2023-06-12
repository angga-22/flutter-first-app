import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const Buttons({super.key, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(fontSize: 16),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
            )
        ),
      ),
      child: Text(text),
    );
  }
}