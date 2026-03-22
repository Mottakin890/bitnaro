import 'package:bitnaro/common/utils/theme/app_colors.dart';
import 'package:bitnaro/common/utils/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;
  final String prefixIconPath;
  final TextEditingController? controller;
  final bool isPassword;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;

  const AuthTextField({
    required this.hintText,
    required this.prefixIconPath,
    this.controller,
    this.isPassword = false,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.onFieldSubmitted,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      style: TextStyles.bodyBaseRegular(AppColors.cBlack),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: RPadding(
          padding: REdgeInsets.all(16),
          child: SvgPicture.asset(
            prefixIconPath,
            height: 20.h,
            width: 20.w,
            colorFilter: const ColorFilter.mode(
              AppColors.primary,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
