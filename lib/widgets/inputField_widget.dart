import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  TextForm({
    super.key,
    required this.txtController,
    required this.hintText,
    // this.label,
    this.maxLine = 1,
    this.validator,
  });

  final TextEditingController txtController;
  final String hintText;
  final int maxLine;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: txtController,
      maxLines: maxLine,
      validator: validator,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
