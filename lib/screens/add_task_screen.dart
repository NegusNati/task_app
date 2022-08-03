import 'package:flutter/material.dart';
import 'package:task_app/constants.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 30.0, left: 30.0,right: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: kBottomSheetTextStyle,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0,)
            ,
            TextButton(
              child: Text(
                'Push me',
                style: TextStyle(
                    color: Colors.black),
              ),
             style: TextButton.styleFrom(primary: Colors.black45,backgroundColor:Colors.lightBlueAccent, ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
