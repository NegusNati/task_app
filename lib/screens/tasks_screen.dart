import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:task_app/widgets/tasks_lists.dart';
import 'package:task_app/widgets/tasks_tiles.dart';
import 'package:task_app/screens/add_task_screen.dart';
import 'package:task_app/models/task.dart';

class TasksScreen extends StatefulWidget {

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
 List<Task> tasks = [
    Task(name: 'lol'),
    Task(name: 'nope'),
    Task(name: 'yes'), 
  ];

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(context: context, builder: ( context)=> AddTaskScreen((newTaskTitle){
            setState(() {
              tasks.add(Task(name: newTaskTitle),);
              Navigator.pop(context);
            });
          }));
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 30.0, right: 30.0, top: 40.0, bottom: 30),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.list,
                        color: Colors.lightBlueAccent,
                        size: 35.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Task App',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w700,
                        )),
                    Text(
                  '${tasks.length} Tasks' ,
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              // ignore: sort_child_properties_last
              child: TasksList(tasks: tasks),
              height: 200.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

