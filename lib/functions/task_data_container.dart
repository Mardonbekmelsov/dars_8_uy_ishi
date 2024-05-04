import 'dart:ffi';

import 'package:dars_8_uy_ishi/utils/style.dart';
import 'package:flutter/material.dart';

class TaskColumn extends StatelessWidget {
  Map task1;
  Map task2;

  TaskColumn({required this.task1, required this.task2});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: task1["color"]),
          padding: task1["isBig"]
              ? EdgeInsets.symmetric(horizontal: 10, vertical: 60)
              : EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Column(
            children: [
              Text(
                task1["amount"],
                style: AppTextStyle.dataStyle(task1["isBlack"]),
              ),
              Text(task1["status"], style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: task2["color"]),
          padding: task2["isBig"]
              ? EdgeInsets.symmetric(horizontal: 10, vertical: 60)
              : EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Column(
            children: [
              Text(
                task2["amount"],
                style: AppTextStyle.dataStyle(task1["isBlack"]),
              ),
              Text(task2["status"], style: TextStyle(color: Colors.white))
            ],
          ),
        ),
      ],
    );
  }
}
