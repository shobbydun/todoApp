import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(227, 154, 147, 147),
      content: Container(
        height: 120,
        child: Column(
          children: [
            // Get user input
            TextField(
              controller: controller, // Use the controller
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new Task!",
              ),
            ),
            // Buttons: save and cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save button
                MyButton(onPressed: onSave, text: "Save"),
                const SizedBox(width: 8),
                // Cancel button
                MyButton(onPressed: onCancel, text: "Cancel"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
