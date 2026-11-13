import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,

        appBar: AppBar(title: Text("My Hobbies")),
        body: Padding(
          padding: EdgeInsetsGeometry.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HobbyCard(
                title: "Travelling",
                icon: Icons.travel_explore,
                color: Colors.green,
              ),
              SizedBox(height: 20),
              HobbyCard(
                title: "Skating",
                icon: Icons.skateboarding,
                color: Colors.blueGrey,
              ),

                  
            ],
          ),
        ),
      ),
    ),
  );
}

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const HobbyCard({
    super.key,
    required this.title,         
    required this.icon,          
    this.color = Colors.blue,    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.all(25), // vertical thickness of the card

                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              );
  }
}
