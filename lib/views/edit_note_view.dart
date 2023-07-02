import 'package:flutter/material.dart';
import 'package:notes_app_hive/widgets/custom_text_form_feild.dart';

class EditNoteApp extends StatelessWidget {
  const EditNoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text(
                      "Notes",
                      style: TextStyle(fontSize: 25),
                    ),
                    const Spacer(),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.07),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.edit,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const CustomTextFormFeild(hintText: "Title"),
              const SizedBox(
                height: 20,
              ),
              const CustomTextFormFeild(
                  hintText: "Content", contentPadding: 60),
            ],
          ),
        ),
      ),
    );
  }
}
