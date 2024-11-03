import 'dart:collection';

import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Meditate'),
    Task(name: 'Shower'),
    Task(name: 'Take breakfast'),
  ];

  // The UnmodifiableListView prevents the list from being modified from any other file
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  // When this method is called it takes the user input(newTaskName) and adds it to the tasks list hence adding a new task tile to the screen
  void addTask(String newTaskName) {
    final task = Task(name: newTaskName);
    _tasks.add(task);
    notifyListeners(); // Listens for the changes and rebuilds the widget tree accordingly
  }

  // Toggles the checkbox from checked to unchecked and vice-versa
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  // This method removes the task that has been long pressed by the user
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
