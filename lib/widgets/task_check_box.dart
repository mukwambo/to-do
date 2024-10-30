import 'package:flutter/material.dart';

class TaskCheckbox extends StatefulWidget {
  const TaskCheckbox({
    super.key,
  });

  @override
  State<TaskCheckbox> createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: false,
      onChanged: (bool? value) {
        // When checked the task is crossed from the list
      },
    );
  }
}
