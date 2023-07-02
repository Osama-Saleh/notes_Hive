import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,this.text,this.onPressed
  });
  final String? text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
                horizontal: 50, vertical: 20),
            backgroundColor: Colors.lightBlueAccent,
            textStyle: const TextStyle(fontWeight: FontWeight.bold)),
        child:  Text(
          text!,
          style: const TextStyle(color: Colors.black),
        ));
  }
}

