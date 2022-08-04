import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
   List<Task> _tasks = [
    Task(name: 'The First Task ! '),
    Task(name: 'nope, this ain\'t its'),
 
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addATask(String newTask) {
    final task = Task(name: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void taskUpdate(Task task) {
    task.toggoleDone();
    notifyListeners();
  }

  void taskDelete(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
