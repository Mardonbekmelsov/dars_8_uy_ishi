import 'package:dars_8_uy_ishi/functions/task_container.dart';
import 'package:dars_8_uy_ishi/functions/task_data_container.dart';
import 'package:dars_8_uy_ishi/pages/third_page.dart';
import 'package:dars_8_uy_ishi/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  List<Map<String, dynamic>> preview = [
    {
      "amount": "22",
      "status": "Done",
      "color": Colors.greenAccent,
      "isBig": true,
      "isBlack": false
    },
    {
      "amount": "12",
      "status": "Ongoing",
      "color": Colors.pinkAccent,
      "isBig": false,
      "isBlack": false
    },
    {
      "amount": "7",
      "status": "In Progress",
      "color": Colors.orangeAccent,
      "isBig": false,
      "isBlack": false
    },
    {
      "amount": "14",
      "status": "Waiting For Review",
      "color": Colors.blueAccent,
      "isBig": true,
      "isBlack": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        padding: EdgeInsets.only(right: 20, left: 20, bottom: 20, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Monday",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "25 October",
                      style: AppTextStyle.headingStyle,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        height: 56,
                        width: 56,
                        child: Image.asset("assets/images/search_icon.png")),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: 56,
                        width: 56,
                        child: Image.asset("assets/images/profile_image.png")),
                  ],
                ),
              ],
            ),
            Text(
              "Hi Surf",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            Text(
              "5 tasks are predning",
              style: TextStyle(color: Colors.grey),
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepPurple),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Information Architecture",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Saber & Oro",
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
                            child:
                                Image.asset("assets/images/profile_image2.png"),
                          ),
                          Container(
                            height: 24,
                            width: 24,
                            child:
                                Image.asset("assets/images/profile_image3.png"),
                          ),
                        ],
                      ),
                      Text(
                        "Now",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "Monthly Preview",
              style: AppTextStyle.headingStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var i = 0; i < preview.length; i += 2)
                  TaskColumn(task1: preview[i], task2: preview[i + 1])
              ],
            ),
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
