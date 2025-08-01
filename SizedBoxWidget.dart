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
          title: Text('My application'),
          backgroundColor: Colors.blue,
        ),
        body: FractionallySizedBox(
          widthFactor: 0.75,
          child: Image(
              image: AssetImage('Assets/Images/laks.jpeg')),
        ),
      ),
    );

    /*
     //SizedBox Widget
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Application'),
            backgroundColor: Colors.blue,
          ),
          //Container need for higher configuration
          //consume high memory
          //to apply border,background use container
          //simple height,width,size use SizedBox container
          body: SizedBox(
            height: 300,
            width:20,
            child: Text('hello',
            style: TextStyle(
              fontSize: 30,
            ),),
          ),
        ),);

     */
  }
  }