import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    super.key, required this.jagoLogo,
  });
final String jagoLogo;
  @override
  Widget build(BuildContext context) {
    return Image.asset(jagoLogo);
  }
}
