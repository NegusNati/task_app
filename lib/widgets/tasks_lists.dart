import 'package:flutter/material.dart';
import 'package:task_app/widgets/tasks_tiles.dart';
import 'package:task_app/models/task.dart';

class TasksList extends StatefulWidget {
final List<Task> tasks ;

TasksList({required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(isChecked: widget.tasks[index].isDone,
            tastTitle: widget.tasks[index].name,
            checkboxCallBack: (checkBoxState) {
              setState(() {
                widget.tasks[index].toggoleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
