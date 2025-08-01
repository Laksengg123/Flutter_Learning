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
        ),
        body: Container(
          child: DataTable(
              headingRowColor: WidgetStatePropertyAll(
                  Colors.blueAccent),
              headingTextStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              columnSpacing: 20,
              dataRowColor: WidgetStatePropertyAll(Colors.pink),
              dataTextStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.cyanAccent
              ),
              showBottomBorder: true,
              columns: [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Age')),
                DataColumn(label: Text('Phone')),
              ],
              //Data table row and column not to be empty it will show error
              rows: [
                DataRow(cells: [
                  DataCell(Text('029')),
                  DataCell(Text('Lakchaya')),
                  DataCell(Text('20')),
                  DataCell(Text('8248260747')),
                ]),
                DataRow(cells: [
                  DataCell(Text('015')),
                  DataCell(Text('Gokul')),
                  DataCell(Text('20')),
                  DataCell(Text('5488260747')),
                ]),
                DataRow(cells: [
                  DataCell(Text('004')),
                  DataCell(Text('Anu')),
                  DataCell(Text('20')),
                  DataCell(Text('7848260747')),
                ]),
              ]

          ),
        ),
      ),
    );
  }
  }