import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 Future postData()async{
   try{
     final response =await http.post(Uri.parse("http://jsonplaceholder.typicode.com/posts"),
     body:{
       "userId":1,
       "title":"uyudsyudyu",
       "body": "this is the body"
     }
     );
     
     
   }catch(e){}
 }

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
      body:ElevatedButton(onPressed: postData , child: Text("Press Button"))
    ),
    );
  }
}