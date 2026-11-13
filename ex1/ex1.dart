import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("My Hobbies"),
        
        ),
        
        body:Container(
          decoration: BoxDecoration(
          color: Colors.grey,),
          child: Padding(padding:EdgeInsets.all(40),
          
          child: Column(
            spacing: 10,
            children: [
              
              card(text: "Travelling", color: Colors.green, icon: Icons.search),
              card(text: "Skating", color: const Color.fromARGB(255, 18, 57, 90), icon: Icons.skateboarding),
            
            ]
              
          ),
                ),
        ),
          
        )
        ),
    
  );
}
Widget card({
  required String text,
  required Color color,
  required IconData icon,
}){
  return Container(
              
              padding: EdgeInsets.all(20),
              
              decoration: BoxDecoration(
                color: color ,
                borderRadius: BorderRadius.circular(20),
              ),
            child: Row(
              children: [
                
                // SizedBox(width: 20),
                Icon(icon, color: Colors.white, size: 16),
                SizedBox(width: 20),
                Text(text, style: TextStyle(color: Colors.white)),
                
              

              
              ],

            ),

          
            );
}
