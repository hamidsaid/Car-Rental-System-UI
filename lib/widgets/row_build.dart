import 'package:flutter/material.dart';
import 'package:car_rental/constants.dart';

class RowBuild extends StatefulWidget {
  final String title;
  final String date;
  final String time;

  RowBuild({
    required this.title,
    required this.date,
    required this.time,
  });

  @override
  State<RowBuild> createState() => _RowBuildState();
}

class _RowBuildState extends State<RowBuild> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          widget.title,
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
          child: TextButton(
            onPressed: () => _selectDate(context),
            child: Text(
              widget.date,
              style: TextStyle(color: kTextColor, fontFamily: 'BeVietnamPro'),
            ),
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
            widget.time,
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
