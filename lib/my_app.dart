import 'package:flutter/material.dart';
import 'package:hiring_platform/home_page.dart';
import 'package:hiring_platform/home_screen.dart';
import 'package:hiring_platform/profile.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Onboard(),
    );
  }
}
