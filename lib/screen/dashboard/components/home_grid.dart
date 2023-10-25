import 'package:agricos/models/cart_items.dart';
import 'package:flutter/material.dart';

import '../../../global/app_colors.dart';
import '../../../global/text_style.dart';

class GridItems extends StatelessWidget {
  const GridItems({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        
        childAspectRatio: MediaQuery.of(context).size.height /
            (MediaQuery.of(context).size.height * 1.2),
        children: List.generate(cartList.length, (index) {
          return Container(
            decoration: BoxDecoration(
                color: AppColors.getGreyColor(context).withOpacity(.4),
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  width: width,
                  padding:const EdgeInsets.all(15),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                    ),
                    child: Image.network(cartList[index].img,height: height,fit: BoxFit.cover,))),
                Positioned(
                  bottom: 0, left: 0, right: 0,
                  child: Container(
                    height: height/10,
                    padding: const EdgeInsets.only(left: 15,right: 10, top: 10,bottom: 10),
                    decoration:  BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)
                      ),
                    color: AppColors.getGreyColor400(context),
                    ),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Text("Expert In:",style: montserratLight16.copyWith(color: AppColors.getGreenColor(context)),),
                      Text(cartList[index].text,style: montserratLight,),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                        Text(cartList[index].subText,style: montserratLight,),
                         GestureDetector(
                          onTap: () {
                            
                          },
                          child:  Icon(Icons.play_arrow,color: AppColors.getGreenColor(context),size: 28,),
                         )
                        ],
                      ),
                    ],),
                  ))
              ],
            )
          );
        }));
  }
}
