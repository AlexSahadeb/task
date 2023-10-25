import 'package:flutter/material.dart';
import '../../widgets/custom_logo.dart';
import '../../widgets/custom_topshape.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
        
      ],
    );
  }
}
