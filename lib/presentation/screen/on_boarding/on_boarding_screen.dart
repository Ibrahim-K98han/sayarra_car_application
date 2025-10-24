import 'package:flutter/material.dart';
import 'package:sayarra_car_application/utils/constraints.dart';
import 'package:sayarra_car_application/widgets/custom_image.dart';
import 'package:sayarra_car_application/widgets/custom_text.dart';
import '../../../utils/k_images.dart';
import '../../../utils/utils.dart';
import 'data/on_boarding_data.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late int _numPages;
  late PageController _pageController;
  int _currentPage = 0;




  @override
  Widget build(BuildContext context) {
   
        return Scaffold(
          body: Stack(
            children: [
              CustomImage(path: KImages.onBoardingBg, height: double.infinity,width: double.infinity,fit: BoxFit.cover,),
              // Positioned(
              //   top: 30.0,
              //   left: 0.0,
              //   right: 0.0,
              //   bottom: 250.0,
              //   child: PageView(
              //     physics: const ClampingScrollPhysics(),
              //     controller: _pageController,
              //     onPageChanged: (int page) {
              //       setState(() {
              //         _currentPage = page;
              //       });
              //     },
              //     children: filteredData
              //         .map((e) => Center(child: CustomImage(path: RemoteUrl.imageUrl(e.image),fit: BoxFit.cover,)))
              //         .toList(),
              //   ),
              // ),
           ],
          ),
        );;
  }

  Widget _buildSkipButton() {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        alignment: Alignment.centerRight,
        margin: Utils.only(right: 20.0),
        child: const CustomText(
          text: "Skip",
          fontWeight: FontWeight.w500,
          fontSize: 18.0,
          color: tTextColor,
        ),
      ),
    );
  }

  Widget _buildDotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        data(context).length,
        (index) {
          final i = _currentPage == index;
          return AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: Utils.vSize(6.0),
            width: Utils.hSize(i ? 26.0 : 6.0),
            margin: Utils.only(right: 4.0),
            decoration: BoxDecoration(
              color: blackColor,
              borderRadius: BorderRadius.circular(i ? 50.0 : 5.0),
              // shape: i ? BoxShape.rectangle : BoxShape.circle,
            ),
          );
        },
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: Utils.symmetric(h: 30.0),
      child: AnimatedSwitcher(
        duration: kDuration,
        transitionBuilder: (Widget child, Animation<double> anim) {
          return FadeTransition(opacity: anim, child: child);
        },
        child: getContent(),
      ),
    );
  }

  Widget getContent() {
  
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      key: ValueKey('$_currentPage'),
      children: [
        CustomText(
          text: '',
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.center,
          color: tTextColor,
        ),
        Utils.verticalSpace(10.0),
        CustomText(
          text: '',
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          textAlign: TextAlign.center,
          color: tTextColor,
        ),
      ],
    );
  }
}
