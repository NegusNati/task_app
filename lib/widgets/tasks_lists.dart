import 'package:flutter/material.dart';
import 'package:task_app/widgets/tasks_tiles.dart';
import 'package:task_app/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'lol'),
    Task(name: 'nope'),
    Task(name: 'yes'), 
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(isChecked: tasks[index].isDone,
            tastTitle: tasks[index].name,
            checkboxCallBack: (checkBoxState) {
              setState(() {
                tasks[index].toggoleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
