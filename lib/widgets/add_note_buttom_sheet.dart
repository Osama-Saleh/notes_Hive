// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:notes_app_hive/widgets/custom_elevated_button.dart';
import 'package:notes_app_hive/widgets/custom_text_form_feild.dart';

class AddNoteButtomSheet extends StatefulWidget {
  const AddNoteButtomSheet({
    super.key,
  });

  @override
  State<AddNoteButtomSheet> createState() => _AddNoteButtomSheetState();
}

class _AddNoteButtomSheetState extends State<AddNoteButtomSheet> {
  var formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              CustomTextFormFeild(
                hintText: "Title",
                onSaved: (value) {
                  print(value);
                  title = value;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormFeild(
                hintText: "Content",
                contentPadding: 60,
                onSaved: (value) {
                  print(value);
                  subtitle = value;
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: CustomElevatedButton(
                  text: "Add",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
