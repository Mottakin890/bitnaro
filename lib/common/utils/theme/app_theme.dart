import 'package:bitnaro/common/utils/theme/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bitnaro/common/utils/theme/app_colors.dart';
import 'package:bitnaro/common/utils/theme/text_styles.dart';

class AppTheme {
  AppTheme._();
  static void applyStatusBarStyle(Brightness brightness) {
    final isDark = brightness == Brightness.dark;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.primary,
        statusBarIconBrightness: isDark ? Brightness.dark : Brightness.light,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: isDark
            ? AppColors.greyDarker
            : AppColors.cWhite,
        systemNavigationBarIconBrightness: isDark ? .light : .dark,
        systemNavigationBarDividerColor: AppColors.cTransparent,
      ),
    );
  }

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.cWhite,
      primaryContainer: AppColors.primaryLighter,
      onPrimaryContainer: AppColors.primaryDarker,
      secondary: AppColors.greyNormal,
      onSecondary: AppColors.cWhite,
      secondaryContainer: AppColors.greyLight,
      onSecondaryContainer: AppColors.greyDarker,
      error: AppColors.redNormal,
      onError: AppColors.cWhite,
      errorContainer: AppColors.redLight,
      onErrorContainer: AppColors.redDarker,
      surface: AppColors.cWhite,
      onSurface: AppColors.cBlack,
      surfaceContainerHighest: AppColors.greyLight,
      outline: AppColors.greyLightActive,
      outlineVariant: AppColors.greyLightHover,
      shadow: AppColors.cBlack,
      scrim: AppColors.cBlack,
      inverseSurface: AppColors.cBlack,
      onInverseSurface: AppColors.cWhite,
    ),

    scaffoldBackgroundColor: AppColors.cWhite,

    fontFamily: 'Poppins',
    textTheme: TextThemes.getTextTheme(AppColors.cBlack),

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.cWhite,
      foregroundColor: AppColors.cBlack,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyles.bodyXLBold(AppColors.cBlack),
      iconTheme: const IconThemeData(color: AppColors.cBlack),
      actionsIconTheme: const IconThemeData(color: AppColors.cBlack),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.primary,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.cWhite,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.cWhite,
        disabledBackgroundColor: AppColors.greyLightActive,
        disabledForegroundColor: AppColors.greyNormal,
        elevation: 0,
        shadowColor: AppColors.cTransparent,
        textStyle: TextStyles.bodyBaseRegular(),
        padding: REdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        disabledForegroundColor: AppColors.greyNormal,
        side: BorderSide(color: AppColors.primary, width: 1.5.w),
        textStyle: TextStyles.bodyBaseRegular(),
        padding: REdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        disabledForegroundColor: AppColors.greyNormal,
        textStyle: TextStyles.bodyBaseRegular(),
        padding: REdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.greyLight,
      contentPadding: REdgeInsets.all(16),
      hintStyle: TextStyles.bodyBaseRegular(AppColors.greyNormal),
      labelStyle: TextStyles.bodyBaseRegular(AppColors.greyDark),
      floatingLabelStyle: TextStyles.bodySMMedium(AppColors.primary),
      errorStyle: TextStyles.bodySMRegular(AppColors.redNormal),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: const BorderSide(color: AppColors.greyLightActive),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: const BorderSide(color: AppColors.greyLightActive),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: BorderSide(color: AppColors.primary, width: 1.5.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: const BorderSide(color: AppColors.redNormal),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: BorderSide(color: AppColors.redNormal, width: 1.5.w),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: const BorderSide(color: AppColors.greyLightHover),
      ),
    ),

    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return AppColors.primary;
        if (states.contains(WidgetState.disabled)) {
          return AppColors.greyLightActive;
        }
        return AppColors.cWhite;
      }),
      checkColor: WidgetStateProperty.all(AppColors.cWhite),
      side: BorderSide(color: AppColors.greyNormal, width: 1.5.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.r),
      ),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return AppColors.cWhite;
        return AppColors.greyNormal;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return AppColors.primary;
        return AppColors.greyLightActive;
      }),
    ),

    dividerTheme: const DividerThemeData(
      color: AppColors.greyLightActive,
      thickness: 1,
      space: 1,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.cWhite,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.greyNormal,
      selectedLabelStyle: TextStyles.bodyXSMedium(),
      unselectedLabelStyle: TextStyles.bodyXSRegular(),
      elevation: 0,
      type: BottomNavigationBarType.fixed,
    ),

    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.cWhite,
      indicatorColor: AppColors.primaryLighter,
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(color: AppColors.primary);
        }
        return const IconThemeData(color: AppColors.greyNormal);
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyles.bodyXSMedium(AppColors.primary);
        }
        return TextStyles.bodyXSRegular(AppColors.greyNormal);
      }),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.cWhite,
      elevation: 2,
    ),

    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.primary,
      linearTrackColor: AppColors.greyLightActive,
    ),

    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.cWhite,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
    ),
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      onPrimary: AppColors.cWhite,
      primaryContainer: AppColors.primaryDark,
      onPrimaryContainer: AppColors.primaryLighter,
      secondary: AppColors.greyLightActive,
      onSecondary: AppColors.greyDarker,
      secondaryContainer: AppColors.greyDarkActive,
      onSecondaryContainer: AppColors.greyLight,
      error: AppColors.redNormal,
      onError: AppColors.cWhite,
      errorContainer: AppColors.redDark,
      onErrorContainer: AppColors.redLight,
      surface: AppColors.greyDarker,
      onSurface: AppColors.cWhite,
      surfaceContainerHighest: AppColors.greyDark,
      outline: AppColors.greyDarkHover,
      outlineVariant: AppColors.greyDark,
      shadow: AppColors.cBlack,
      scrim: AppColors.cBlack,
      inverseSurface: AppColors.greyLight,
      onInverseSurface: AppColors.greyDarker,
      inversePrimary: AppColors.primaryDark,
    ),

    scaffoldBackgroundColor: AppColors.greyDarker,

    fontFamily: 'Poppins',
    textTheme: TextThemes.getTextTheme(AppColors.cWhite),

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.greyDarker,
      foregroundColor: AppColors.cWhite,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyles.bodyXLBold(AppColors.cWhite),
      iconTheme: const IconThemeData(color: AppColors.cWhite),
      actionsIconTheme: const IconThemeData(color: AppColors.cWhite),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: AppColors.primary,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.greyDarker,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.cWhite,
        disabledBackgroundColor: AppColors.greyDark,
        disabledForegroundColor: AppColors.greyNormal,
        elevation: 0,
        shadowColor: AppColors.cTransparent,
        textStyle: TextStyles.bodyBaseRegular(),
        padding: REdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        disabledForegroundColor: AppColors.greyNormal,
        side: BorderSide(color: AppColors.primary, width: 1.5.w),
        textStyle: TextStyles.bodyBaseRegular(),
        padding: REdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        disabledForegroundColor: AppColors.greyNormal,
        textStyle: TextStyles.bodyBaseRegular(),
        padding: REdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.greyDarkActive,
      contentPadding: REdgeInsets.all(16),
      hintStyle: TextStyles.bodyBaseRegular(AppColors.greyNormal),
      labelStyle: TextStyles.bodyBaseRegular(AppColors.greyLightActive),
      floatingLabelStyle: TextStyles.bodySMMedium(AppColors.primary),
      errorStyle: TextStyles.bodySMRegular(AppColors.redLight),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: const BorderSide(color: AppColors.greyDark),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: const BorderSide(color: AppColors.greyDark),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: BorderSide(color: AppColors.primary, width: 1.5.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: const BorderSide(color: AppColors.redNormal),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: BorderSide(color: AppColors.redNormal, width: 1.5.w),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.r),
        borderSide: const BorderSide(color: AppColors.greyDarkHover),
      ),
    ),

    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return AppColors.primary;
        if (states.contains(WidgetState.disabled)) {
          return AppColors.greyDark;
        }
        return AppColors.greyDarker;
      }),
      checkColor: WidgetStateProperty.all(AppColors.cWhite),
      side: BorderSide(color: AppColors.greyNormal, width: 1.5.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.r),
      ),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return AppColors.cWhite;
        return AppColors.greyNormal;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return AppColors.primary;
        return AppColors.greyDark;
      }),
    ),

    dividerTheme: const DividerThemeData(
      color: AppColors.greyDark,
      thickness: 1,
      space: 1,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.greyDarker,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.greyNormal,
      selectedLabelStyle: TextStyles.bodyXSMedium(),
      unselectedLabelStyle: TextStyles.bodyXSRegular(),
      elevation: 0,
      type: BottomNavigationBarType.fixed,
    ),

    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.greyDarker,
      indicatorColor: AppColors.primaryDark,
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(color: AppColors.primary);
        }
        return const IconThemeData(color: AppColors.greyNormal);
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyles.bodyXSMedium(AppColors.primary);
        }
        return TextStyles.bodyXSRegular(AppColors.greyNormal);
      }),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.cWhite,
      elevation: 2,
    ),

    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.primary,
      linearTrackColor: AppColors.greyDark,
    ),

    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: AppColors.greyDark,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
    ),
  );
}
