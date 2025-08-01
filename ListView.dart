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

        body: ListView(
          children: [
            Text('list-01',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            Text('list-02',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            Text('list-03',
              style: TextStyle(
                  fontSize: 20
              ),
            )
          ],
        ),
      ),
    );
  }
}