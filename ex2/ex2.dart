import 'package:flutter/material.dart';
enum ButtonType {
  primary(Colors.blue),
  secondary(Colors.green),
  disabled(Colors.grey);

  final Color color;
  const ButtonType(this.color);
}

// 2. Enum for Icon Position
enum IconPosition {
  left,
  right,
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomButton(
                label: "Submit",
                icon: Icons.check,
              ),

              CustomButton(
                label: "Time",
                icon: Icons.access_time,
                buttonType: ButtonType.secondary,
                iconPosition: IconPosition.right,
              ),

              CustomButton(
                label: "Account",
                icon: Icons.account_tree,
                buttonType: ButtonType.disabled,
                iconPosition: IconPosition.right,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType buttonType;

  const CustomButton({
    super.key,
    required this.label,                           
    required this.icon,                            
    this.iconPosition = IconPosition.left,         
    this.buttonType = ButtonType.primary,         
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),  
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: buttonType.color,                   
        borderRadius: BorderRadius.circular(30),   
      ),
     child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(icon, color: Colors.white, size: 20),
    const SizedBox(width: 10),
    Text(
      label,
      style: const TextStyle(color: Colors.white, fontSize: 16),
    ),
  ],
),
    );
  }
}