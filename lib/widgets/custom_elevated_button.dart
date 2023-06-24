import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,this.text
  });
  final String? text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
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

