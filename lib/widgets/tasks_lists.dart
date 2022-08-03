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
          final task = TaskData.tasks[index];
          return TaskTile(
              isChecked: task.isDone,
              tastTitle: task.name,
              checkboxCallBack: (checkBoxState) {
                TaskData.taskUpdate(task);
              });
        },
        itemCount: TaskData.taskCount,
      );
    });
  }
}
