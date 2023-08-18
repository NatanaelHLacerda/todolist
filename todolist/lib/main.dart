import 'package:flutter/material.dart';
import 'package:todolist/car_entity.dart';
import 'package:todolist/information.dart';
import 'package:todolist/todo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: const TodoView(),
      routes: {'/information': (context) => const InformationView()},
    );
  }
}
