import 'package:agricos/global/text_style.dart';
import 'package:agricos/widgets/custom_logo.dart';
import 'package:agricos/widgets/custom_topshape.dart';
import 'package:flutter/material.dart';
import '../../global/app_colors.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/primary_button.dart';
import '../dashboard/dashboard.dart';

class RegisterDetails extends StatelessWidget {
  RegisterDetails({super.key});
  final cropTypeController = TextEditingController();
  final soilTypeController = TextEditingController();
  final climateController = TextEditingController();
  final layoutController = TextEditingController();
  final diseaseController = TextEditingController();
  final equipmentController = TextEditingController();
  final informationController = TextEditingController();
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
                  "Farming Details",
                  style: montserratRegularBlod22.copyWith(
                      color: AppColors.getGreenColor(context)),
                ),
                SizedBox(
                  height: height / 60,
                ),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: cropTypeController,
                          hintText: 'Enter Your Crop Type',
                        ),
                        SizedBox(
                          height: height / 50,
                        ),
                        CustomTextField(
                          controller: soilTypeController,
                          hintText: 'Enter Your Soil Type',
                        ),
                        SizedBox(
                          height: height / 50,
                        ),
                        CustomTextField(
                          controller: climateController,
                          hintText: 'Enter Your Climate',
                        ),
                        SizedBox(
                          height: height / 50,
                        ),
                        CustomTextField(
                          controller: layoutController,
                          hintText: 'Farm Size and layout',
                        ),
                        SizedBox(
                          height: height / 50,
                        ),
                        CustomTextField(
                          controller: diseaseController,
                          hintText: 'Pest and disease',
                        ),
                        SizedBox(
                          height: height / 50,
                        ),
                        CustomTextField(
                          controller: equipmentController,
                          hintText: 'Farming equipment',
                        ),
                        SizedBox(
                          height: height / 50,
                        ),
                        CustomTextField(
                          controller: informationController,
                          hintText: 'Economic Information',
                        )
                      ],
                    )),
                SizedBox(
                  height: height / 20,
                ),
                PrimaryButton(
                  width: width,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dashboard()));
                  },
                  text: "SUBMIT",
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
