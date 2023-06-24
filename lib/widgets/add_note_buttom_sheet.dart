// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:notes_app_hive/widgets/custom_elevated_button.dart';
import 'package:notes_app_hive/widgets/custom_text_form_feild.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          
          children: [
            const CustomTextFormFeild(hintText: "Title"),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormFeild(hintText: "Content", contentPadding: 60),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child:const CustomElevatedButton(text: "Add"),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

