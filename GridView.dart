import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application Title',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Home Page Title"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get colour => null;

  Widget build(BuildContext context) {
    //here we have the option to scroll the window but wrap doesn't contain this

    return SafeArea(
        child : Scaffold(
        appBar: AppBar(
        title: Text('My Application'),
    backgroundColor: Colors.blueAccent,
    ),
    body: GridView.count(
        crossAxisCount: 3,
    children: [
      Icon(Icons.access_alarm_outlined, size: 25),
      Icon(Icons.ac_unit,size : 25),
      Icon(Icons.accessibility_rounded,size: 25),

    ],),
    ),
    );
    }

  }