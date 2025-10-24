import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayarra_car_application/utils/utils.dart';
import '../../../routes/route_names.dart';
import '../../../utils/k_images.dart';
import '../../../widgets/custom_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _splashWidget());
  }

  Widget _splashWidget() {
    return Center(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: CustomImage(
          path: KImages.splashBgImage,
          fit: BoxFit.cover,
          // height: 250,
          // width: 250,
        ),
      ),
    );
  }
}
