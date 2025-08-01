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
    ),
    body: RefreshIndicator(
      backgroundColor: Colors.lightGreenAccent,
      strokeWidth: 3,//refresh stroke size
      displacement: 300,//location of refresh
      onRefresh: () async{
        await Future.delayed(Duration(seconds: 3));
      },
      child: SingleChildScrollView(
        child: Container( //container default have the scroll
        height:1000,
        width: double.infinity,
        color: Colors.white,
        alignment: Alignment.center,
        child: Text("Refreshing",
        style: TextStyle(
        fontSize: 30
        ),),
        ),
      ),
    ),
    ),
    );
  }
}