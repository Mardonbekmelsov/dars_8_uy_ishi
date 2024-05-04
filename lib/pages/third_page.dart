import 'dart:ffi';

import 'package:dars_8_uy_ishi/functions/data_container.dart';
import 'package:dars_8_uy_ishi/functions/task_row.dart';
import 'package:dars_8_uy_ishi/pages/second_page.dart';
import 'package:dars_8_uy_ishi/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  List<Map<String, dynamic>> days = [
    {"data": "4", "day": "Sat", "isSelected": false},
    {"data": "5", "day": "Sun", "isSelected": true},
    {"data": "6", "day": "Mon", "isSelected": false},
    {"data": "7", "day": "Tue", "isSelected": false},
  ];

  List<Map<String, dynamic>> tasks = [
    {
      "task": "Information Architecture",
      "partners": "Saber & Oro",
      "time": "9:00 AM-10:00 AM",
      "color": Colors.deepOrange
    },
    {
      "task": "",
      "partners": "",
      "time": "111:00 AM",
      "color": Colors.deepPurple
    },
    {
      "task": "Software Testing",
      "partners": "Saber & Mike",
      "time": "12:00 PM-01:00 PM",
      "color": Colors.blueAccent
    },
    {
      "task": "Debugging",
      "partners": "Saber & Michael",
      "time": "2:00 PM-03:00 PM",
      "color": Colors.pinkAccent
    },
    {
      "task": "Skill Developing",
      "partners": "Saber & Sarah",
      "time": "4:00 PM-05:00 PM",
      "color": Colors.greenAccent
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(),
                      ),
                    );
                  },
                  icon: Container(
                    height: 56,
                    width: 56,
                    child: Image.asset("assets/images/back_icon.png"),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    height: 56,
                    width: 56,
                    child: Image.asset("assets/images/profile_image.png"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "← Mar",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Text(
                  "April",
                  style: AppTextStyle.headingStyle,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "May →",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var day in days)
                  DataContainer(
                      data: day["data"],
                      day: day["day"],
                      isSelected: day["isSelected"])
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Ongoing",
              style: AppTextStyle.headingStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (var task in tasks)
                      Column(
                        children: [
                          TaskRow(
                            task: task["task"],
                            partners: task["partners"],
                            time: task["time"],
                            containerColor: task["color"],
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.calendar_month_rounded,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.chat_bubble_fill,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.person_solid,
                  color: Colors.grey,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
