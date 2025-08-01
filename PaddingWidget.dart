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
                  fontSize: 25
              ),),
          ),
          body: Padding(
            //padding: const EdgeInsets.all(8.0),//offset value like corner of the container
            /*
            padding : const EdgeInsets.symmetric(
              horizontal: 30,
              vertical:20
            ),
             */
            /*
            padding : const EdgeInsets.only(
              left : 25,
              right: 50,
              top: 60
            ),
            */
            padding: const EdgeInsets.fromLTRB(20, 30, 60, 10),
            child: Container(
              color: Colors.pink,
              height: 300,
              width: 300,
            ),
          )
      ),
    );
  }
  }