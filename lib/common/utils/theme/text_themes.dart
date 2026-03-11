import 'package:bitnaro/common/utils/theme/app_colors.dart';
import 'package:bitnaro/common/utils/theme/text_styles.dart';
import 'package:flutter/material.dart';

class TextThemes {
  static TextTheme getTextTheme([Color textColor = AppColors.cBlack]) {
    return TextTheme(
      displayLarge: TextStyles.h1(textColor),
      displayMedium: TextStyles.h2(textColor),
      displaySmall: TextStyles.h3(textColor),
      headlineLarge: TextStyles.h4(textColor),
      headlineMedium: TextStyles.h5(textColor),
      headlineSmall: TextStyles.h6(textColor),
      titleLarge: TextStyles.bodyXLBold(textColor),
      titleMedium: TextStyles.bodyLGSemiBold(textColor),
      titleSmall: TextStyles.bodyMDSemiBold(textColor),
      bodyLarge: TextStyles.bodyBaseRegular(textColor),
      bodyMedium: TextStyles.bodySMRegular(textColor),
      bodySmall: TextStyles.bodyXSRegular(textColor),
      labelLarge: TextStyles.body2XSMedium(textColor),
      labelMedium: TextStyles.body2XSRegular(textColor),
      labelSmall: TextStyles.body2XSRegular(textColor),
    );
  }
}
