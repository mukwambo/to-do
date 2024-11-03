import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  // Declare newTaskTitle as a class-level variable
  String newTaskTitle = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          const Text(
            'Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              onChanged: (newTaskText) {
                newTaskTitle = newTaskText;
              },
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: const Size(double.infinity, 60.0),
              backgroundColor: Colors.lightBlueAccent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(0.0),
                ),
              ),
            ),
            onPressed: () {
              if (newTaskTitle.isNotEmpty) {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                // Close the bottom sheet after adding
                Navigator.pop(context);
              } else {
                print("Please enter a task");
              }
            },
            child: const Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
