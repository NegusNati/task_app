import 'package:flutter/material.dart';
import 'package:task_app/widgets/tasks_tiles.dart';
import 'package:provider/provider.dart';
import 'package:task_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, TaskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
              isChecked: TaskData.tasks[index].isDone,
              tastTitle: TaskData.tasks[index].name,
              checkboxCallBack: (checkBoxState) {
                // setState(() {
                //   widget.tasks[index].toggoleDone();
                // });
              });
        },
        itemCount: TaskData.taskCount,
      );
    });
  }
}
