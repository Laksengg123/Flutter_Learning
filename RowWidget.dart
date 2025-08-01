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
          title: Text('My Application'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Container(
          height: 500,
          width: 300,
          color: Colors.black45,
          child: Row(
            //  mainAxisAlignment: MainAxisAlignment.center,
            //  mainAxisAlignment: MainAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.end,
            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //  crossAxisAlignment: CrossAxisAlignment.start,

            //No vertical Alignment
            children: [
              Container(
                margin: EdgeInsets.all(8.0),
                alignment: Alignment.center,
                width: 50,
                height: 50,
                color: Colors.purple,
                child: Text('A'),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                alignment: Alignment.center,
                width: 50,
                height: 50,
                color: Colors.orange,
                child: Text('B'),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                alignment: Alignment.center,
                width: 50,
                height: 50,
                color: Colors.pink,
                child: Text('C'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}