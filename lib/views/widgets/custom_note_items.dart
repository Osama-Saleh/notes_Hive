// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class CustomNoteItems extends StatelessWidget {
  const CustomNoteItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: MediaQuery.of(context).size.height / 3,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.amberAccent, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Flutter Tips",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                const Spacer(),
                Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.black,
                          size: 35,
                        ))),
              ],
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Build Your Career with\nosama saleh",
                style: TextStyle(
                    fontSize: 20, color: Colors.black.withOpacity(.6)),
              )),
          Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "May 21,2023",
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              )),
        ],
      ),
    );
  }
}
