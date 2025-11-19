import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String myText;
  final Color myTextColor;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.myText,
    required this.myTextColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurpleAccent, // warna cerah tapi harmonis
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 3,
      ),
      child: Text(
        myText,
        style: TextStyle(
          color: myTextColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
