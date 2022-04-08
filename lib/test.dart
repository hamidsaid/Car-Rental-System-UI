import 'dart:async';

import 'package:car_rental/constants.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2030));
    if (picked != null && picked != selectedDate) {
      setState(() {
        //selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select date'),
            ),
            TextButton(
              onPressed: () => _selectDate(context),
              child: Text("pick date"),
              style: TextButton.styleFrom(
                primary: kDarkColor,
                backgroundColor: kMainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
