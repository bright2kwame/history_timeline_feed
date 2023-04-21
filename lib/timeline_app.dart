import 'package:flutter/material.dart';
import 'package:timeline_plugin/home_page.dart';


class TimelineApp extends StatelessWidget {
  const TimelineApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

