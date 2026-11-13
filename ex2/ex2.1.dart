import 'package:flutter/material.dart';
enum ButtonType {
  primary(Colors.blue),
  secondary(Colors.green),
  disabled(Colors.grey);

  final Color color;
  const ButtonType(this.color);

}

enum IconPosition{
  left,right
}

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
      ),
    )
  )
}