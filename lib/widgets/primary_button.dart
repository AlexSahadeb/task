import 'package:agricos/global/app_colors.dart';
import 'package:flutter/material.dart';
import '../global/text_style.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.width,
    required this.text,
    required this.onpressed,
  });

  final double width;
  final String text;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
          style: ButtonStyle(
            padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 15)),
            backgroundColor:
                MaterialStatePropertyAll(AppColors.getGreenColor(context)),
          ),
          onPressed: onpressed,
          child: Text(text, style: montserratRegular18)),
    );
  }
}
