
import 'package:flutter/material.dart';
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

}

