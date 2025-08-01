import 'dart:math';

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

//PREDEFINED VALUE SO USE ENUMERATION
//OTHERWISE USE THE STRING LIKE DRAWERWIDGET
enum MyStates{TamilNadu,Kerala,Karnadaka,Telungana,Assam}

class _MyHomePageState extends State<MyHomePage> {
  get colour => null;

  MyStates selectedStates = MyStates.TamilNadu;
  bool statusTerms = false;
  String statusAgreement ="",statusMovies = "",statusState = "";

  TextEditingController tecAge = TextEditingController();

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('MY application'),
          ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text('My Movies',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue),
                ),
                ],
              ),
            ),
            TextField(
              decoration:InputDecoration(
                labelText: 'User Name',
                helperText: 'Enter your Name',
              ),
            ),
            TextField(
              controller: tecAge,
              keyboardType: TextInputType.number,
              decoration:InputDecoration(
                labelText: 'Age',
                helperText: 'Enter your Age',
              ),

            ),
            Container(
              margin: EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text('Choose Your State',
              style: TextStyle(
                fontSize: 20,
              ),),
            ),
            DropdownMenu<MyStates>(
              width: double.infinity,
              initialSelection: selectedStates,
                onSelected: (MyStates?pickedStates)
                {//to update the value in the backend use on selected
                  selectedStates = pickedStates!;
                },
                dropdownMenuEntries: [
                  DropdownMenuEntry(
                    //It will update the value in the frontend only
                      value: MyStates.TamilNadu ,
                      label:  MyStates.TamilNadu.name),
                  DropdownMenuEntry(
                      value: MyStates.Karnadaka ,
                      label:  MyStates.Karnadaka.name),
                  DropdownMenuEntry(
                      value: MyStates.Kerala ,
                      label:  MyStates.Kerala.name),
                  DropdownMenuEntry(
                      value: MyStates.Telungana ,
                      label:  MyStates.Telungana.name),
                  DropdownMenuEntry(
                      value: MyStates.Assam ,
                      label:  MyStates.Assam.name),

                ]
            ),
            ListTile(
              leading: Checkbox(
                  value: statusTerms,
                  onChanged: (bool ? pickedStatus)
                  {
                    setState(() {
                      statusTerms = pickedStatus!;
                    });
                  }),
              title: Text('Agree for terms and Conditions'),
              
            ),
            ElevatedButton(
                onPressed: ()
                {
                  setState(() {
                    //1.Terms and Conditions
                      if(statusTerms == false)
                        {
                          statusAgreement = 'Please agree for the terms and conditions';
                        }
                      else
                        {
                          statusAgreement ="";
                        }

                      //2.Age Validation
                      int valueAge = int.parse(tecAge.text);
                      //tecAge is string to convert it use .text
                      if(valueAge<10)
                        {
                             statusMovies = 'Recommand Cartoon Movies';
                        }
                      else
                        {
                             statusMovies = 'Recommand Horror Movies';
                        }

                      //3.state validation
                      if(selectedStates == MyStates.TamilNadu )
                        {
                          statusState = 'Tamil Movies';
                        }
                      else if(selectedStates == MyStates.Kerala)
                        {
                          statusState = ' Kerala';
                        }
                      else if(selectedStates==MyStates.Karnadaka)
                        {
                          statusState = 'Karnadaka';
                        }
                      else if(selectedStates == MyStates.Telungana)
                        {
                          statusState = 'Telungana';
                        }
                      else
                        {
                          statusState = 'Assam Movies';
                        }
                  });
                },
                child: Text('Sign Up',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                ),)),
            Text(statusAgreement),
            Text(statusMovies),
            Text(statusState),

          ]

        ),


      ),
    );
  }
}