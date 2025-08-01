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

  String selectedValue = 'Python';

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        title: Text('My Application'),
    ),
    body: Column(
    children: [
      Text('Choose the Course',
    style: TextStyle(
    fontSize: 20,
    ),),
    DropdownMenu<String>(
      width: double.infinity,//to fill the parent size
      initialSelection: selectedValue,
        onSelected: (String ? pickedValue){//to update the value in the backend use on selected
        setState(() {
          selectedValue = pickedValue!;
        });
        },
        dropdownMenuEntries: [
          DropdownMenuEntry(
              value: 'python',//backend
              label: 'Python Programming'),//user showing option
          DropdownMenuEntry(
              value: 'python',//backend
              label: 'Python Programming'),//user showing option
          DropdownMenuEntry(
              value: 'c',//backend
              label: 'C Programming'),//user showing option
          DropdownMenuEntry(
              value: 'julia',//backend
              label: 'Julia Programming'),//user showing option
          DropdownMenuEntry(
              value: 'dart',//backend
              label: 'Dart Programming'),//user showing option
        ]),
    ],
    ),
    ),
    );
  }
}