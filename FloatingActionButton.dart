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

  String operation = "Operation";

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Application'),
          backgroundColor: Colors.blueAccent,
        ),
          body:SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      operation = 'Tapped';
                    });
                  },
                  onDoubleTap: ()
                  {
                    setState(() {
                      operation = 'double tapped';
                    });
                  },
                  onLongPress: ()
                  {
                    setState( () {
                      operation = 'Long Pressed';
                    });
                  },
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepPurple
                    ),
                    alignment: Alignment.center,
                    child: Text(operation,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white)
                    ),),
                ),
                GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      operation = 'Tapped';
                    });
                  },
                  onDoubleTap: ()
                  {
                    setState(() {
                      operation = 'double tapped';
                    });
                  },
                  onLongPress: ()
                  {
                    setState( () {
                      operation = 'Long Pressed';
                    });
                  },
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightGreenAccent
                    ),
                    alignment: Alignment.center,
                    child: Text(operation,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white)
                    ),),
                ),
                GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                      operation = 'Tapped';
                    });
                  },
                  onDoubleTap: ()
                  {
                    setState(() {
                      operation = 'double tapped';
                    });
                  },
                  onLongPress: ()
                  {
                    setState( () {
                      operation = 'Long Pressed';
                    });
                  },
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12
                    ),
                    alignment: Alignment.center,
                    child: Text(operation,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white)
                    ),),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton.large(
              onPressed: ()
               {
                 setState(() {
                   operation = 'Floating Action';
                 });

               },
               child: Icon(Icons.refresh),
      ),
      ),
    );
  }
}