import 'package:bitnaro/common/resources/assets/app_assets.dart';
import 'package:bitnaro/common/utils/routes/app_routes.dart';
import 'package:bitnaro/presentation/splash/bloc/splash_bloc.dart';
import 'package:bitnaro/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.status == SplashStatus.loaded) {
          context.go(AppRoutes.chooseAccount);
        }
      },
      child: Scaffold(
        body: Center(
          child: Image.asset(
            AppAssets.appLogo,
            height: 145.h,
            width: 155.w,
          ),
        ),
      ),
    );
  }
}
