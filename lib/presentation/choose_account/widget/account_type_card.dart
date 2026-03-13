import 'package:bitnaro/common/resources/assets/app_assets.dart';
import 'package:bitnaro/common/utils/dimentions/spacings.dart';
import 'package:bitnaro/common/utils/theme/app_colors.dart';
import 'package:bitnaro/common/utils/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AccountTypeCard extends StatelessWidget {
  final String accountType;
  final String accountTypeDescription;
  final String accountTypeLogo;
  final bool isSelected;
  final void Function()? onTap;

  const AccountTypeCard({
    super.key,
    this.onTap,
    required this.accountType,
    required this.accountTypeDescription,
    required this.accountTypeLogo,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 121.h,
            width: 332.w,
            padding: REdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.lightPrimary : AppColors.cWhite,
              borderRadius: BorderRadius.circular(8.r),
              border: isSelected
                  ? null
                  : Border.all(color: AppColors.secondary, width: 1.w),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  accountTypeLogo,
                  height: 64.h,
                  width: 64.w,
                ),
                Spacing.horizontal(24),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        accountType,
                        style: TextStyles.bodyMDMedium(AppColors.cBlack),
                      ),
                      Spacing.vertical(8),
                      Text(
                        accountTypeDescription,
                        style: TextStyles.bodySMRegular(AppColors.greyNormal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (isSelected)
            Positioned(
              top: -14.h,
              right: -14.w,
              child: Container(
                padding: REdgeInsets.all(4),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  AppAssets.check,
                  height: 24.h,
                  width: 24.w,
                  colorFilter: const ColorFilter.mode(
                    AppColors.secondary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
