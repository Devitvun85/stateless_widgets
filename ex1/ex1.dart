import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home:Scaffold(
          backgroundColor: Colors.grey,

        appBar: AppBar(
          title: Text("My Hobbies"),

        ),
        body: Padding(
          padding: EdgeInsetsGeometry.all(40),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children: [
              Container(
            padding:  EdgeInsets.all(25), // vertical thickness of the card
                
                decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(right: 20),
                      child: Icon(Icons.travel_explore,color: Colors.white,size: 30,),
                      ),
                      Text("Travelling",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ],
                  )
                
              ),
              
              
            ],

          ),
        ),
        
        
      ),
    ),
  );
          
}
