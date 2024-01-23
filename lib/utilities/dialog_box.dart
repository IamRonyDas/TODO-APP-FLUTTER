import 'package:flutter/material.dart';
import 'package:todo_list/utilities/my_botton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onsave;
  VoidCallback oncancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onsave,
    required this.oncancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            Center(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Add a new task"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(text: "Save", onPressed: onsave),
                const SizedBox(
                  width: 10,
                ),
                //cancel button
                MyButton(text: "Cancel", onPressed: oncancel)
              ],
            )
            //buttons->save+cancel
          ],
        ),
      ),
    );
  }
}
