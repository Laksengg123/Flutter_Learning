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
        body:Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return PageOne();

                    }));
                },
              child: Text('Page1',
                    style: TextStyle(
                      fontSize: 20,

                    ),),
              ),
              ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context){
                         return PageTwo();
                    }));
                },
              child: Text('Page2',
                    style: TextStyle(
                      fontSize: 20,

                    ),),
              ),

            ],
          ),
        )
        
      ),
    );
  }
}


//to create the page

class PageOne extends StatelessWidget{
  //two types widget statelessWidget - content static don't change
  //two types widget statefulWidget - content is not static change

  String pageContent = 'Static Content';

  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          title: Text('Vanakkam'),
        ),
        body: Center(
          child: Container(
            color: Colors.lightGreenAccent,
            child: Text('pageContent',
              style: TextStyle(
                fontSize: 22,

              ),),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed:(){
          pageContent = 'Now I am dynamic';//try to change the static content
        },
          child : Icon(Icons.refresh),
        )
    );
  }
}


class PageTwo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PageTwo();
  }


}

//associated class
class _PageTwo extends State<PageTwo>{

  String pageContent = 'Static content';

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('welcome to my page2'),
     ),
     body: Container(
       child: Text(pageContent,
       style: TextStyle(
         fontSize: 25,
       ),),
     ),
     floatingActionButton: FloatingActionButton(
         onPressed: ()
          {
            setState(() {
              pageContent = 'I am dynamic now';
            });
          },
          child: Icon(Icons.refresh),
   ),
   );
  }
  
}

//stateless - not update
