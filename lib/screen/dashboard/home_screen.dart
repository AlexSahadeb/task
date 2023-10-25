import 'package:agricos/global/app_colors.dart';
import 'package:agricos/screen/dashboard/components/home_grid.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_logo.dart';
import '../../widgets/custom_topshape.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = 'Select State/Country';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CustomTopBg(
          height: height,
          image: "assets/images/top_shape.png",
        ),
        const CustomLogo(
          jagoLogo: "assets/images/jago_krisan.png",
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 80),
          child: DropdownButtonFormField(
            icon:  Padding(
              padding:const EdgeInsets.only(right: 15),
              child: Icon(Icons.arrow_drop_down_circle,color: AppColors.getWhiteColor(context),),
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(width: 0)),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 0),
                borderRadius: BorderRadius.circular(40),
              ),
              filled: true,
              fillColor: AppColors.getGreenColor(context),
            ),
            value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            dropdownColor: AppColors.getGreyColor(context),
            items: [
              'Select State/Country',
              'Australia',
              'Canada',
              'China',
              'Armenia',
              'Cambodia',
              'Bangladesh'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 18,color: AppColors.getWhiteColor(context)),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
       SizedBox(height: height/90,),
        Expanded(
            child: GridItems(width: width, height: height))
      ],
    );
  }
}
