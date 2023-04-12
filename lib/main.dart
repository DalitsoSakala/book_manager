import 'package:flutter/material.dart';

void main(){
  runApp(BookApp());
}

class BookApp extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
      routes: {
        '/':(context){return Page1();},
        '/page-2':(context){return Page2();},
      },
    );
  }
}

class Page1 extends StatelessWidget{
  Widget build(context){
    return Scaffold(
      appBar: AppBar(title: Text("Book Manager"),),
      body: Column(children:[
        Text('You are Home!'),
        TextButton(onPressed:(){
          Navigator.pushNamed(context, '/page-2');
        } , child: Icon(Icons.arrow_right_alt_rounded))
      ]),
    );
  }
  
}

class Page2 extends StatelessWidget{

  Widget build(context){
    return Scaffold(appBar: AppBar(
      title: Text('Page 2'),
    ),);
  }
  
}