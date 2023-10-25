import 'package:flutter/material.dart';

class CustomTopBg extends StatelessWidget {
  const CustomTopBg({
    super.key,
    required this.height,
    required this.image,
  });

  final double height;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SizedBox(
        height: height / 5.8,
        width: double.infinity,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
