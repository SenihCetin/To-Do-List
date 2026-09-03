import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  const ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 20),      
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            CustomSlidableAction(
              onPressed: deleteFunction,
              backgroundColor: const Color.fromARGB(255, 246, 52, 52),
              borderRadius: BorderRadius.circular(24),
              child: const Icon(
                Icons.delete,
                size: 34, 
                color: Colors.white, 
              ),
            )
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: const Color.fromARGB(255, 29, 29, 29),
              ),
              Text(
                taskName,
                style: TextStyle(
                  fontSize: 22,
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}