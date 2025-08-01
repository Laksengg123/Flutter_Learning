import 'package:flutter/material.dart';

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