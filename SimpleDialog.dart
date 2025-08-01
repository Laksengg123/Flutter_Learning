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
                        return SimpleDialog(
                          children: [
                            SimpleDialogOption(
                              child: Text('Add to favorite'),
                              onPressed: ()
                              {
                                Navigator.pop(context);
                              },
                            ),
                            SimpleDialogOption(
                              child: Text('remove contact'),
                              onPressed: ()
                              {
                                Navigator.pop(context);
                              },
                            ),
                            SimpleDialogOption(
                              child: Text('add to blocklist'),
                              onPressed: ()
                              {
                                Navigator.pop(context);
                              },
                            ),
                            SimpleDialogOption(
                              child: Text('rename it'),
                              onPressed: ()
                              {
                                Navigator.pop(context);
                              },
                            ),
                            SimpleDialogOption(
                              child: Text('save to mail'),
                              onPressed: ()
                              {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      });
                });

              },
              icon: Icon(Icons.menu,color: Colors.red,)),
        ),
      ),
    );
  }
}
