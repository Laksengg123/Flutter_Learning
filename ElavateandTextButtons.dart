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

  String message= "";
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('My application'),
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
          //     ElevatedButton(
          //         style: ButtonStyle(
          //             backgroundColor: WidgetStatePropertyAll(Colors.lightGreenAccent),
          //             foregroundColor: WidgetStatePropertyAll(Colors.white)
          //         ),
          //         onPressed: () {
          //           //Ddo action
          //           setState(() {
          //             message = "You've Clicked Me";
          //           });
          //
          //         }
          //         ,
          //         child: Text('Click Me')),
          //     Text(message),
          //   ],
          // )
              TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.lightGreenAccent),
                  foregroundColor: WidgetStatePropertyAll(Colors.white)
                ),
                onPressed: () {
                  //Ddo action
                  setState(() {
                    message = "You've Clicked Me";
                  });

                }
                ,
                child: Text('Click Me')),
            Text(message),
            ],
          )

      ),);
  }
}