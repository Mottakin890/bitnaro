import 'package:bitnaro/common/utils/dimentions/spacings.dart';
import 'package:bitnaro/common/utils/theme/app_colors.dart';
import 'package:bitnaro/common/utils/theme/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgreementSection extends StatelessWidget {
  final void Function()? onTap;
  final void Function(bool?)? checkUnCheck;
  final bool isAgreed;

  const AgreementSection({
    super.key,
    this.onTap,
    this.isAgreed = false,
    this.checkUnCheck,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 18.h,
          width: 18.w,
          child: Checkbox(
            value: isAgreed,
            activeColor: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
            side: const BorderSide(color: AppColors.softGrey),
            onChanged: checkUnCheck,
          ),
        ),
        Spacing.horizontal(6),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'I agree to the ',
              style: TextStyles.bodySMRegular(AppColors.softGrey),
              children: [
                TextSpan(
                  text: 'Terms & Condition',
                  style: TextStyles.bodySMRegular(AppColors.primary),
                  recognizer: TapGestureRecognizer()..onTap = onTap,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
