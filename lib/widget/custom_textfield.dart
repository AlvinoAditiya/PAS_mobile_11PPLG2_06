import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextfiled extends StatelessWidget {
  final bool isNumber;
  final TextEditingController controller;
  final String label;
  final Color labelColor;
  final bool pass;

  const CustomTextfiled({
    super.key,
    required this.controller,
    required this.label,
    required this.labelColor,
    required this.pass,
    required this.isNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
        inputFormatters:
            isNumber ? [FilteringTextInputFormatter.digitsOnly] : [],
        controller: controller,
        obscureText: pass,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: labelColor,
            fontWeight: FontWeight.w500,
          ),
          filled: true,
          fillColor: Colors.deepPurple.shade50, // background ringan
          // Border saat aktif/fokus
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.deepPurple, width: 2),
          ),
          // Border saat tidak fokus
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.deepPurple.shade200, width: 1.5),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        ),
      ),
    );
  }
}
