import 'package:agricos/global/app_colors.dart';
import 'package:agricos/global/text_style.dart';
import 'package:agricos/screen/auth/register_screen.dart';
import 'package:agricos/widgets/custom_logo.dart';
import 'package:agricos/widgets/custom_topshape.dart';
import 'package:agricos/widgets/round_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
final emailController=TextEditingController();
final passwordController=TextEditingController();
final GlobalKey formKey=GlobalKey<FormState>();
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
                SizedBox(
                    height: height / 2,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            "assets/images/farmer.jpg",
                            fit: BoxFit.cover,
                            height: height,
                            opacity: const AlwaysStoppedAnimation(.2),
                          ),
                        ),
                        Positioned(
                            top: 0,
                            left: 0,
                            bottom: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              child: Form(
                                key: formKey,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const CircleAvatar(
                                      radius: 50,
                                      backgroundImage:
                                          AssetImage("assets/images/profile.png"),
                                    ),
                                    TextFormField(
                                      controller: emailController,
                                      decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.person,
                                          ),
                                          hintText: "Enter your e-mail",
                                          focusColor: Colors.grey),
                                    ),
                                    TextFormField(
                                      controller: passwordController,
                                      decoration:  InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.lock,
                                          ),
                                          hintText: "Enter your password",
                                          focusColor: AppColors.getGreyColor(context)),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: const Text("Forgot Password?",style: montserratRegular,),
                                      ),
                                    ),
                                    const Text("Or Sign In Using",style: montserratRegular,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                            onTap: () {},
                                            child: Image.asset(
                                                "assets/images/fb.png")),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        GestureDetector(
                                            onTap: () {},
                                            child: Image.asset(
                                                "assets/images/google.png")),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        GestureDetector(
                                            onTap: () {},
                                            child: Image.asset(
                                                "assets/images/tiwtter.png")),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ))
                      ],
                    )),
                 SizedBox(
                  height: height/20
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: RoundedButton(
                    width: width,
                    onpressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                    },
                    text: "Login",
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    ));
  }
}
