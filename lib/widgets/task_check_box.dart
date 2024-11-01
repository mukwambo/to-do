import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {
  const TaskCheckbox(
      {super.key, required this.checkboxState, required this.checkboxChanged});
  final bool checkboxState;
  final ValueChanged<bool?> checkboxChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: checkboxChanged,
    );
  }
}
