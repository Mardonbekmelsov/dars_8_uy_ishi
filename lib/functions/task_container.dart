import 'package:flutter/material.dart';

class TaskContainer extends StatelessWidget {
  String task;
  String partners;
  String time;
  Color containerColor;

  TaskContainer(
      {required this.task,
      required this.partners,
      required this.time,
      required this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: containerColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            task,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            partners,
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/images/profile_image2.png"),
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/images/profile_image3.png"),
                  ),
                ],
              ),
              Text(
                time,
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ],
          ),
        ],
      ),
    );
  }
}
