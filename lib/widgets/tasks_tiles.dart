import 'package:flutter/material.dart';


class TasksTiles extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListTile(
     title: Text('The First List '),
     // ignore: avoid_print
     trailing: Checkbox(value: false, onChanged: (bool? value) { print(value); },),
    );
  }
}
