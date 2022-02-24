import 'package:clinic_app/common/constants/style.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextInputAction? inputAction;
  final TextEditingController controller;
  final Widget suffix;
  final String hint;
  final String? Function(String?) validator;
  final bool? obscureText;
  const CustomInput(
      {Key? key, this.inputAction, required this.controller, required this.suffix, required this.hint, required this.validator, this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: validator,
      textInputAction: inputAction,
      controller: controller,
      decoration: InputDecoration(
          hintText: hint,
          suffixIcon: suffix,
          enabledBorder: myBorder,
        focusedBorder: myBorder,
        border: myBorder,
      ),
    );
  }
}
