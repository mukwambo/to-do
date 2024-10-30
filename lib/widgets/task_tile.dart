import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/task_check_box.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text(
        'This is a task.',
      ),
      trailing: TaskCheckbox(),
    );
  }
}
