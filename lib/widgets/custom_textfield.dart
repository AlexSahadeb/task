import 'package:flutter/material.dart';
import '../global/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.validator,
      this.suffixIcon,
      this.priffixIcon,
      this.controller});
  final String hintText;
  final Widget? suffixIcon;
  final Widget? priffixIcon;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          prefixIcon: priffixIcon,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                  width: 2, color: AppColors.getGreenColor(context))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                  width: 2, color: AppColors.getGreenColor(context))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                  width: 2, color: AppColors.getGreenColor(context))),
          hintText: hintText),
    );
  }
}
