import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String text;
  final void Function() onTap;

  const AnswerButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 10,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: const Color.fromARGB(66, 18, 1, 52),
          foregroundColor: Colors.white),
      child: Text(text, textAlign: TextAlign.center),
    );
  }
}
