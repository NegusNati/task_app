import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tastTitle;
  final void Function(bool?) checkboxCallBack;
  final VoidCallback longpressCallBack;

  TaskTile(
      {required this.isChecked,
      required this.tastTitle,
      required this.checkboxCallBack,
      required this.longpressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallBack,
      title: Text(
        tastTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}
