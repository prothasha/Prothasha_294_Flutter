
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final controller, keyboardType, labelText, hintText,
      prefixIcon, validator;

  const InputField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    required this.validator
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      style: const TextStyle(
        color: Color(0xFF91375C),
      ),

      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        hintStyle: const TextStyle(
          color: Color(0xFFB56A8A),
        ),
        labelStyle: const TextStyle(
          color: Color(0xFFB56A8A),
        ),
        floatingLabelStyle: const TextStyle(
          color: Color(0xFF91375C),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50))
        )
      ),
      validator: (value) {
        if(value == null) {
          return "Field is empty";
        }
        return null;
      },
    );
  }
}
