import 'package:dars_8_uy_ishi/functions/task_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaskRow extends StatelessWidget {
  String task;
  String partners;
  String time;
  Color containerColor;

  TaskRow(
      {required this.task,
      required this.partners,
      required this.time,
      required this.containerColor});

  @override
  Widget build(BuildContext context) {
    return task.isNotEmpty
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      time.split("-")[0],
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      time.split("-")[1],
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              TaskContainer(
                task: task,
                partners: partners,
                time: time,
                containerColor: containerColor,
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                time,
                style: TextStyle(color: Colors.grey),
              ),
              Container(
                height: 3,
                width: 250,
                color: Colors.deepPurple,
              ),
            ],
          );
  }
}
