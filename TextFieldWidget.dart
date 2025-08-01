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
  //to improve the performance of the app we create here when inside the build it can created every the the option will recreate
  TextEditingController tecName = TextEditingController();
  TextEditingController tecAge = TextEditingController();
  TextEditingController tecDate = TextEditingController();
  TextEditingController tecEmail = TextEditingController();
  TextEditingController tecPhone = TextEditingController();
  TextEditingController tecPassword = TextEditingController();
  TextEditingController tecAddress = TextEditingController();


  Widget build(BuildContext context) {
    return SafeArea
      (
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Application'),
          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: tecName,
                decoration: InputDecoration(
                    labelText: 'Name',
                    icon: Icon(Icons.person),
                    //  hintText: 'Enter Your Full Name',//it can hide
                    helperText: 'Enter the value', //it can't hide
                    helperStyle: TextStyle(
                        color: Colors.purple

                    )
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: tecAge,
                decoration: InputDecoration(
                    labelText: 'Age',
                    icon: Icon(Icons.calendar_month),
                    helperText: 'Enter your age',
                    helperStyle: TextStyle(
                        color: Colors.purple
                    )
                ),
              ),
              TextField(
                keyboardType: TextInputType.datetime,
                controller: tecDate,
                decoration: InputDecoration(
                    labelText: 'Date',
                    icon: Icon(Icons.calendar_month),
                    helperText: 'Enter your Date',
                    helperStyle: TextStyle(
                        color: Colors.purple
                    )
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: tecPhone,
                decoration: InputDecoration(
                    labelText: 'Phone Number',
                    icon: Icon(Icons.phone),
                    helperText: 'Enter your Phone number',
                    helperStyle: TextStyle(
                        color: Colors.purple
                    ) //it can't hide
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: tecEmail,
                decoration: InputDecoration(
                    labelText: 'Email',
                    icon: Icon(Icons.email_outlined),
                    helperText: 'Enter your email id',
                    helperStyle: TextStyle(
                        color: Colors.purple
                    )
                ),
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true, //it hide the password
                controller: tecPassword,
                decoration: InputDecoration(
                    labelText: 'PassWord',
                    icon: Icon(Icons.password),
                    helperText: 'Enter your PassWord',
                    helperStyle: TextStyle(
                        color: Colors.purple
                    )
                ),
              ),
              TextField(
                maxLines: 4,
                keyboardType: TextInputType.multiline,
                controller: tecAddress,
                decoration: InputDecoration(
                    labelText: 'Address',
                    icon: Icon(Icons.home),
                    helperText: 'Enter your Address',
                    helperStyle: TextStyle(
                        color: Colors.purple
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  }