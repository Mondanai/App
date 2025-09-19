import 'package:flutter/material.dart';
import 'dart:async';

class TimerDemo extends StatefulWidget {
  const TimerDemo({super.key});


 @override
  State<TimerDemo> createState() => _CountDownState();
}


class _CountDownState extends State<TimerDemo> {
  int count = 60;




  void countdown(Timer timer) {
    setState(() {
      count--;
      if (count == 0) {
        timer.cancel();
      }
    });
  }


  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) => countdown(timer));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Text(
            count.toString(),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
    );
  }
}

/* @override
  State<TimerDemo> createState() => _TimerDemoState();
}


class _TimerDemoState extends State<TimerDemo> {
  String status = 'Start';


  void stop() {
    setState(() {
      status = 'Stop';
    });
  }


  @override
  void initState() {
    super.initState();
    // start timer
    Timer(const Duration(seconds: 3), stop);
    // Future.delayed(const Duration(seconds: 3), stop);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Text(
            status,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
    );
  }
}
*/

