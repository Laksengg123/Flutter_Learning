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
  bool statusPolitics = false;
  bool statusCinema = false;
  bool statusEducation = false;

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Application'),
            backgroundColor: Colors.blueAccent,
          ),
          body: Column(
            children: [
              Text('Choose Your Intrest',
              style: TextStyle(
                fontSize: 20
              ),),
              ListTile(
              leading :Checkbox(
                  value: statusPolitics,
                  onChanged:(bool ? checkedValue){
                    setState(() {
                      checkedValue = statusPolitics!;
                    });
              }),
              title :Text('Politics'),
              ),
              ListTile(
              leading :Checkbox(
                  value: statusCinema,
                  onChanged:(bool ? checkedValue){
                    setState(() {
                      checkedValue = statusCinema!;
                    });
              }),
              title :Text('Cinema'),
              ),
              ListTile(
              leading :Checkbox(
                  value: statusEducation,
                  onChanged:(bool ? checkedValue){
                    setState(() {
                      checkedValue = statusEducation!;
                    });
              }),
              title :Text('Cinema'),
              ),
            ],
          ),
        ),);
  }

  }