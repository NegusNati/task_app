
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/models/task.dart';

class TaskData extends ChangeNotifier{

List<Task> tasks = [
    Task(name: 'lol'),
    Task(name: 'nope'),
    Task(name: 'yes'), 
  ];

  int get taskCount {
    return tasks.length;
  }
  void addATask(String newTask){
    final task = Task(name: newTask);
    tasks.add(task);
    notifyListeners();
  }

}

