import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Icon icon; 
  final VoidCallback onPressed;
  
  const AppButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon, 
      ),
    );
  }
}
