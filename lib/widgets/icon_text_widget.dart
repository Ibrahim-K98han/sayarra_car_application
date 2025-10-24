import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sayarra_car_application/widgets/custom_image.dart';
import 'package:sayarra_car_application/widgets/custom_text.dart';

import '../utils/constraints.dart';
import '../utils/utils.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    super.key,
    required this.icon,
    required this.text,
    this.iconColor = blackColor,
    this.textColor = sTextColor,
    this.fontSize = 12,
    this.iconSize = 18,
    this.fontWeight = FontWeight.w400,
  });

  final String icon;
  final String text;
  final Color iconColor;
  final Color textColor;
  final double fontSize;
  final double iconSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImage(path: icon,color: iconColor, height: iconSize.h,),
        Utils.horizontalSpace(4.w),
        CustomText(
          text: text,
          fontSize: fontSize.sp,
          color: textColor,
          fontWeight: fontWeight,
          maxLine: 1,
        ),
      ],
    );
  }
}