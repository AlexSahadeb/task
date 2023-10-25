import 'package:agricos/screen/auth/register_details.dart';
import 'package:flutter/material.dart';
import 'package:agricos/global/text_style.dart';
import 'package:agricos/widgets/custom_logo.dart';
import 'package:agricos/widgets/custom_topshape.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../global/app_colors.dart';
import '../../widgets/primary_button.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  int currentText=0;

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
                  height: height/60,
                ),
                Text(
                "Phone Verification",
                style: montserratRegularBlod22.copyWith(color: AppColors.getGreenColor(context)),
              ),
              SizedBox(height: height/60,),
                Text(
                "Code sent to 016120723297",
                style: montserratRegular.copyWith(color: AppColors.getGreenColor(context)),
              ),
                 SizedBox(
                  height: height/20,
                ),
                 PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  textStyle:const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                  cursorColor: AppColors.getRedColor(context),
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(15),
                      fieldHeight: 60,
                      fieldWidth: 60,
                      inactiveColor:AppColors.getBlackColor(context),
                      selectedColor: AppColors.getRedColor(context)),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: false,
                  //errorAnimationController: errorController,
                  //controller: textEditingController,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    // setState(() {
                    //   currentText = value;
                    // });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");

                    return true;
                  },
                ),
                
              SizedBox(height: height/40,),
                RichText(
                  textAlign: TextAlign.center,
                  text:  TextSpan(text: 'Don’t receive code? ',
                  style: TextStyle(color: AppColors.getBlackColor(context),fontSize: 15,fontWeight: FontWeight.w500),
                   children: [
                  TextSpan(
                    text: 'Request again Get via Call',
                    
                  style: TextStyle(color: AppColors.getBlackColor(context),fontSize: 15,fontWeight: FontWeight.w700),
                    )
                   ]),
               ), 
               SizedBox(
                  height: height/15,
                ),
                PrimaryButton(
                  width: width,
                  onpressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterDetails()));
                  },
                  text: "Verify",
                ),
              const SizedBox(height: 10,)
              ],
            ),
          )
        ],
      ),
    ));
  }
}

