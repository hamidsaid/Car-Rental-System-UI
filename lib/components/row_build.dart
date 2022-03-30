import 'package:flutter/material.dart';
import 'package:car_rental/constants.dart';

class RowBuild extends StatelessWidget {
  final String title;
  final String date;
  final String time;

  RowBuild({
    required this.title,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'BeVietnamPro',
          ),
        ),
        SizedBox(
          width: 30.0,
        ),
        Container(
          alignment: Alignment.center,
          height: 30,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: kGreyColor,
          ),
          child: Text(
            date,
            style: TextStyle(color: kTextColor, fontFamily: 'BeVietnamPro'),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 30,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: kGreyColor,
          ),
          child: Text(
            time,
            style: TextStyle(
              color: kTextColor,
              fontFamily: 'BeVietnamPro',
            ),
          ),
        ),
      ],
    );
  }
}
