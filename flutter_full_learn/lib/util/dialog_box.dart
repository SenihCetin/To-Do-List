import 'package:flutter/material.dart';
import 'package:flutter_full_learn/util/button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSaved;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.controller,
    required this.onSaved,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12), 
                ),
                hintText: "Add a new task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end, 
              children: [
                Button(
                  text: "Save", 
                  onPressed: onSaved, 
                  color: Colors.green, 
                ),
                const SizedBox(width: 8), 
                Button(
                  text: "Cancel", 
                  onPressed: onCancel, 
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}