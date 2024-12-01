// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

   DialogBox({super.key, required this.controller,required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: controller ,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add a new task',
            ),
          ),
          SizedBox(height: 7,),
          Row(children: [
            SizedBox(width: 20,),
            MyButton(text: "Save", onPressed: (onSave)),
            SizedBox(width: 20,),
            MyButton(text: "Cancel", onPressed: onCancel),
            

          ],)
        ],
      ),
      ),
    );
  }
}

