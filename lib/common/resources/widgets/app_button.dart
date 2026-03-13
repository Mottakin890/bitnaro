import 'package:bitnaro/common/utils/theme/app_colors.dart';
import 'package:bitnaro/common/utils/theme/text_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final void Function()? onTap;
  final String buttonTitle;

  const AppButton({super.key, required this.onTap, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        width: double.infinity,
        height: 51.h,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: .circular(8.r),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyles.bodyBaseMedium().copyWith(
              color: AppColors.cWhite,
            ),
          ),
        ),
      ),
    );
  }
}
