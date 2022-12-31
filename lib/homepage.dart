import 'dart:async';

import 'package:flutter/material.dart';
import 'package:happy_new_year/clock_view.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    @override void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
              
      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm:ss').format(now);

    int dueHour = 0 - now.hour;
    String countHour;
    if(dueHour >= 10) countHour = dueHour.toString();
    else countHour = "0" + dueHour.toString();

    int dueMinute = 17 - now.minute;
    String countMinute;
    if(dueMinute >= 10) countMinute = dueMinute.toString();
    else countMinute = "0" + dueMinute.toString();
      
    int dueSecond = 59 - now.second;
    String countSecond;
    if(dueSecond >= 10) countSecond = dueSecond.toString();
    else countSecond = "0" + dueSecond.toString();

    String CountDown = "error";
    if(dueMinute >= 0) CountDown = countHour+":"+countMinute+":"+countSecond;
    else {
      CountDown = "20살 이다아아아아아악!!";
    }


    return Scaffold(
      backgroundColor: const Color(0xFF2D2F41),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 90),
            ClockView(),
            const SizedBox(height: 10),
            Text(
              formattedTime,
              style: TextStyle(color: Colors.white, fontSize: 64),
            ),
            const SizedBox(height: 10),
            Text(
              CountDown,
              style: TextStyle(color: Colors.white, fontSize: 50),
            )
          ],
        ),
      )
    );
  }
}
