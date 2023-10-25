import 'package:flutter/material.dart';

import '../../../global/app_colors.dart';
import '../../../global/text_style.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: List.generate(
            20,
            (index) => ListTile(
                  contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 8),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Expert In:",
                          style: montserratLight16.copyWith(
                              color: AppColors.getGreenColor(context))),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "> Vegetables Disease",
                        style: montserratLight.copyWith(
                            color: AppColors.getBlackColor(context)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Management",
                        style: montserratLight.copyWith(
                            color: AppColors.getBlackColor(context)),
                      ),
                    ],
                  ),
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                )));
  }
}
