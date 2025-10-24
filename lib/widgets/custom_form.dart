import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/constraints.dart';
import '../utils/utils.dart';
import 'custom_text.dart';

class CustomForm extends StatelessWidget {
  final String label;
  final Widget child;
  final double bottomSpace;
  final bool requiredField; // Add this

  const CustomForm({
    super.key,
    required this.label,
    required this.child,
    this.bottomSpace = 0.0,
    this.requiredField = false, // Default to false
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText(
              text: label,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: tTextColor,
            ),
            if (requiredField)
               Text(
                ' *',
                style: TextStyle(color: Colors.red, fontSize: 14.sp),
              ),
          ],
        ),
        Utils.verticalSpace(6.h),
        child,
        Utils.verticalSpace(bottomSpace),
      ],
    );
  }
}