import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Analog Clock',
      home: const ClockPage(),
    );
  }
}

class ClockPage extends StatelessWidget {
  const ClockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 94, 94, 94),
      appBar: AppBar(
        title: const Text('Analog Clock'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 94, 94, 94),
      ),
      body: Center(
        child: AnalogClock(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          width: 280,
          isLive: true,
          hourHandColor: Colors.red,
          minuteHandColor: Colors.black,
          secondHandColor: Colors.black,
          numberColor: Colors.black,
          showNumbers: true,
          showAllNumbers: false,
          textScaleFactor: 1.2,
          showTicks: true,
          showSecondHand: true,
          showDigitalClock: false,
        ),
      ),
    );
  }
}
