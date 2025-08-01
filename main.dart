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

enum Gender{Female,Male,TransWomen}//when we need the fixed values ,our code will be consistent
class _MyHomePageState extends State<MyHomePage> {
  get colour => null;

//to improve the performance of the app we create here when inside the build it can created every the the option will recreate
  TextEditingController tecName = TextEditingController();
  TextEditingController tecAge = TextEditingController();
  TextEditingController tecDate = TextEditingController();
  TextEditingController tecEmail = TextEditingController();
  TextEditingController tecPhone = TextEditingController();
  TextEditingController tecPassword = TextEditingController();
  TextEditingController tecAddress = TextEditingController();

  Gender selectedGender = Gender.Female; //default choose female
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('My application'),
              backgroundColor: Colors.pinkAccent,

            ),
            //body:Center(
            //child: Container(
            //child: Text('Hi my fellow developers',
            // style: TextStyle(
            // fontSize: 30,
            // color: Colors.redAccent,
            //  backgroundColor: Colors.black12,
            //  letterSpacing: 1,
            //  wordSpacing: 2,
            //  fontWeight: FontWeight.bold,
            //  fontStyle: FontStyle.italic
            //), ),
            //),
            //),
            //);
            //child: Icon(Icons.lock,
            //size: 100,
            //color: Colors.black12,
            //shadows: [
            //  Shadow(
            //    color: Colors.cyanAccent,
            //    offset: Offset(10,10),
            //),
            //   Shadow(
            //    color: Colors.deepOrange,
            //    offset: Offset(-10, -10)
            //)
            //],),

            //  height: 200,
            //  width: 200,
            //  color: Colors.cyanAccent,
            //  child: Center(
            //    child: Center(
            //      child: Text('Hello dev',
            //      style: TextStyle(
            //          color: Colors.black87,
            //          fontWeight: FontWeight.bold,
            //          fontSize: 50
            //      ),),
            //    ),
            // body: Center(
            body: Container(
                height: 300,
                width: 300,
                alignment: Alignment.center,

                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  // borderRadius: BorderRadius.all(
                  //   Radius.circular(150.0)//the half of the height width provide circle
                  // ),
                  color: Colors.cyanAccent,
                  border: Border(
                      top: BorderSide(
                        color: Colors.black87,
                        width: 5,
                      )
                  ),

                  // padding: EdgeInsets.all(16), //spaces
                  //margin: EdgeInsets.all(16),
                  // color: Colors.cyanAccent,
                  // child: Text("hello my dear",
                  // style: TextStyle(
                  //   fontSize: 25
                ),
                // margin: EdgeInsets.all(5.0),
                child: Text("Hello makkale",
                  style: TextStyle(
                      fontSize: 25


                  ),

                )
            )
        ));
  }
}


