import 'package:agricos/global/app_colors.dart';
import 'package:agricos/global/text_style.dart';
import 'package:agricos/widgets/custom_logo.dart';
import 'package:agricos/widgets/custom_topshape.dart';
import 'package:agricos/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'auth/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
          CustomTopBg(height: height, image:  "assets/images/top_shape.png",),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Text(
                  "Welcome To",
                  style: montserratRegularBlod22.copyWith(color: AppColors.getGreenColor(context)),
                ),
                const CustomLogo(
                  jagoLogo: "assets/images/jago_krisan.png",
                ),
                SizedBox(
                  height: height / 2,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/field_green.png",
                        fit: BoxFit.cover,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                 Text(
                  "Without Agriculture  we can’t survive on this planet",
                  style: montserratRegular22.copyWith(color: AppColors.getGreenColor(context)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 25,
                ),
                PrimaryButton(
                  width: width,
                  onpressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  text: "Get Started",
                )
              ],
            ),
          )
              ],
            ),
        ));
  }
}
