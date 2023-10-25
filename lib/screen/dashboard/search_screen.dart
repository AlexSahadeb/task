import 'package:agricos/global/app_colors.dart';
import 'package:agricos/screen/dashboard/components/search_items.dart';
import 'package:agricos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import '../../global/text_style.dart';
import '../../widgets/custom_logo.dart';
import '../../widgets/custom_topshape.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Search",
                style: montserratRegularBlod22.copyWith(
                    color: AppColors.getGreenColor(context)),
              ),
              SizedBox(
          height: height/60,
        ),
              CustomTextField(
                controller: searchController,
                hintText: "Search",
                priffixIcon: const Icon(
                  Icons.search,
                  size: 30,
                ),
                suffixIcon: const Icon(
                  Icons.close,
                  size:25,
                ),
              ),
            ],
          ),
        ),
         SizedBox(
          height: height/60,
        ),
        Text(
          "Vegetables crops expert",
          style: montserratRegularBlod22.copyWith(
              color: AppColors.getGreenColor(context)),
        ),
        SizedBox(
          height: height/80,
        ),
        const Expanded(child: SearchItem())
      ],
    );
  }
}
