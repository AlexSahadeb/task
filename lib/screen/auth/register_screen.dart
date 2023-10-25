import 'package:agricos/global/text_style.dart';
import 'package:agricos/screen/auth/verification_screen.dart';
import 'package:agricos/widgets/custom_logo.dart';
import 'package:agricos/widgets/custom_topshape.dart';
import 'package:flutter/material.dart';
import '../../global/app_colors.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/primary_button.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final conFirmPassController = TextEditingController();
  final GlobalKey formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          CustomTopBg(
            height: height,
            image: "assets/images/top_shape.png",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomLogo(
                  jagoLogo: "assets/images/jago_krisan.png",
                ),
                Text(
                  "Create Account",
                  style: montserratRegularBlod22.copyWith(
                      color: AppColors.getGreenColor(context)),
                ),
                SizedBox(
                  height: height / 30,
                ),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                           CustomTextField(
                          controller: nameController,
                          hintText: 'Full Name',
                          suffixIcon: Icon(
                            Icons.person,
                            color: AppColors.getGreenColor(context),
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: height / 40,
                        ),
                        CustomTextField(
                          controller: emailController,
                          hintText: 'Email Address',
                          suffixIcon: Icon(
                            Icons.email,
                            color: AppColors.getGreenColor(context),
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          height: height / 40,
                        ),
                        CustomTextField(
                            controller: phoneController,
                            hintText: 'Phone Number',
                            suffixIcon: Icon(
                              Icons.phone,
                              color: AppColors.getGreenColor(context),
                              size: 30,
                            )),
                        SizedBox(
                          height: height / 40,
                        ),
                        CustomTextField(
                            controller: passwordController,
                            hintText: 'Password',
                            suffixIcon: Icon(
                              Icons.lock,
                              color: AppColors.getGreenColor(context),
                              size: 30,
                            )),
                        SizedBox(
                          height: height / 40,
                        ),
                        CustomTextField(
                            controller: conFirmPassController,
                            hintText: 'Confirm Password',
                            suffixIcon: Icon(
                              Icons.done,
                              color: AppColors.getGreenColor(context),
                              size: 30,
                            ))
                      ],
                    )),
                SizedBox(
                  height: height / 10,
                ),
                PrimaryButton(
                  width: width,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VerificationScreen()));
                  },
                  text: "NEXT",
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
