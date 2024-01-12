import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ExampleFour extends StatefulWidget {
  const ExampleFour({Key? key}) : super (key: key);

  @override
  _ExampleFourState createState() => _ExampleFourState();
}
var data;
   Future<void>getuserApi ()async{
     final response= await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
     if(response.statusCode==200){
       data =jsonDecode(response.body.toString());
   }else{

     }

}
class _ExampleFourState extends State<ExampleFour>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        title:Text("Api Course"),

      ),
      body: Column(
        children:[
          Expanded(
            child:FutureBuilder(
              future: getuserApi(),
              builder:(context , snapshot){
                if (snapshot.connectionState==ConnectionState.waiting )
                {
                  return Text("Loading");
                }else{
                  return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context,index){
                    return Card(child: Column(
                        children: [
                          ReusableRow(title:"name", value:data[index]['name'].toString()),
                          ReusableRow(title:"Username", value:data[index]['username'].toString()),
                          ReusableRow(title:"address", value:data[index]['address']['street'].toString()),
                          ReusableRow(title:"Geo", value:data[index]['address']['geo'].toString()),
                        ],
                    ),);
                  }
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
class ReusableRow extends StatelessWidget {
  String title, value;

  ReusableRow ({ Key ? key,required this.title, required this.value}): super ( key: key);
  @override
  Widget build(BuildContext){
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(value ),
      ],
    );

  }
}