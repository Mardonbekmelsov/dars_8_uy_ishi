import 'package:dars_8_uy_ishi/utils/style.dart';
import 'package:flutter/material.dart';

class DataContainer extends StatelessWidget {
  String data;
  String day;
  bool isSelected;

  DataContainer(
      {required this.data, required this.day, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 120,
      width: 80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: isSelected? Colors.deepPurple: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            data,
            style: AppTextStyle.dataStyle(!isSelected),
          ),
          Text(
            day,
            style: TextStyle(color: isSelected? Colors.white: Colors.black),
          ),
        ],
      ),
    );
  }
}
