import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallBack(bool? checkboxState) {
    setState(() {
      isChecked = checkboxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        checkboxChanged: checkboxCallBack,
      ),
    );
  }
}

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
