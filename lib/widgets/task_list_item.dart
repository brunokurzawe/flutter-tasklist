import 'package:flutter/material.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({Key? key, required this.taskText}) : super(key: key);

  final String taskText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[300],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text(
            "21/12/2022",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Text(
            taskText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
