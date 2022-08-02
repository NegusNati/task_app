import 'package:flutter/material.dart';
import 'package:task_app/widgets/tasks_tiles.dart';


class TasksList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView(
    
      children:  <Widget>[
       TasksTiles(),
       TasksTiles(),
       TasksTiles(),
       
      ],
    );
  }
}
