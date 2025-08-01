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

  // underscore means private variable
  final GlobalKey<FormState>  _formKey = GlobalKey<FormState>();

  void validateAndSave()
  {//to check the current state is valid
    final FormState? form = _formKey.currentState;//it may be nullable so use?
    if(form!.validate())
      {
          //save information is valid
        print('Form is valid');
      }
    else
      {
          //Invalid Form
        print('Form is invalid');
      }
  }
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Application'),
          ),
          body: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'UserName: *'
                  ),
                  onSaved : (name)
                  {
                    //All information is ok then we do the another process like
                    //split first and last name
                    //convert all into capital

                  },
                  validator: (name)
                  {
                    //1.Minimum six character
                    if(name!.length >5)
                      {
                        //2.all the character should be in lower case
                        for(int i=0;i<name.length;i++)
                          {
                            if(name[i] == name[i].toLowerCase())
                              {

                              }
                            else
                              {
                                return "All should be lower";
                              }

                          }
                      }
                    else
                      {
                        return "Minimum 6 chars is Required";
                      }
                  },

                ),
                ElevatedButton(
                    onPressed: ()
                    {
                      validateAndSave();
                    }, 
                    child: Text("Submit"))
              ],

            ),

          ),
        ),
    );
  }
}