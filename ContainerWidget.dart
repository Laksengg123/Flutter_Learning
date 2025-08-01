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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Application'),
          backgroundColor: Colors.black,
        ),
        body: Container(
          //color: Colors.blueAccent,//both color and decoration can't use in the same container it will show error
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightGreenAccent
            //inside of this we can use color
          ),
          height: 300,
          width: 300,
          child: Center(
            child: Text('Hello vanakam'),
          ),
        ),
      ),
    );
  }
  }