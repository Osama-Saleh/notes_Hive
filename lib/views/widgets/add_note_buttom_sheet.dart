import 'package:flutter/material.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          
          decoration: InputDecoration(
            hintText: "Title",
            hintStyle: TextStyle(color: Color.fromARGB(255, 64, 228, 192)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 64, 228, 192), width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
           
          ),
        ),
      ],
    );
  }
}
