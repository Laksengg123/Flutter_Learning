import 'package:flutter/material.dart';

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