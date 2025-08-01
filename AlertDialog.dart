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

  String statevar = "";

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        title: Text('My Application'),
    ),
    body: ListTile(
      leading: Icon(Icons.person,size: 40,),
    title: Text('Lakchaya'),
    subtitle: Text('2459786621'),
      trailing: IconButton(
          onPressed: ()
          {
            setState(() {
                showDialog(
                  barrierDismissible: false,
                    context: context,
                    builder: (context)
                     {
                        return AlertDialog(
                          title: Text('Warning'),
                          content: Text('Are you sure to delete this contact'
                          '\nThis action cannot be undone'),
                          actions: [
                            TextButton(
                                onPressed: (){
                                  Navigator.pop(context);

                              },
                                child: Text('Cancel')),
                            ElevatedButton(
                                onPressed: ()
                                {
                                  //delete the contact

                                },
                                child: Text('Delete'))
                          ],
                        );
                     });
            });
            
          }, 
          icon: Icon(Icons.delete,color: Colors.red,)),
    ),
    ),
    );
  }
}
