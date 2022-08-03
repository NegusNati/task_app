import 'package:flutter/material.dart';
import 'package:task_app/constants.dart';
import 'package:task_app/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String inputTask = '';
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: kBottomSheetTextStyle,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newtaskValue) {
                inputTask = newtaskValue;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black45,
                backgroundColor: Colors.lightBlueAccent,
              ),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addATask(inputTask);
                Navigator.pop(context);
              },
              child: const Text(
                ' Add ',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
