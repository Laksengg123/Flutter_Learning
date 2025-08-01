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
            title: Text('Hello Everyone',
              style: TextStyle(
                  fontSize: 25),
            ),
          ),
          body: Container(
            height: 300,
            width: 300,
            color: Colors.black26,
            child: Align(
              alignment: Alignment.bottomCenter,
              // alignment: Alignment.bottomRight,
              // alignment: Alignment(1,0),//(use 0 to 1)
              child: Text("Hi da vadakkam",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.bold
                ),),
            ),
          )
      ),
    );
  }
  }