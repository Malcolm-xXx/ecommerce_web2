import 'package:flutter/material.dart';

import 'Screens/Home/home_page.dart';
import 'experiment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-commerce web ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const HomePage(),
      //home:  DropDownButtonExample(),
       //home: const MyWidget(),
    );
  }
}

