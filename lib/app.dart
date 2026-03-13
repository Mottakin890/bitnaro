import 'package:bitnaro/common/utils/dependency_injection/dependency_injection.dart';
import 'package:bitnaro/common/utils/routes/app_route_config.dart';
import 'package:bitnaro/common/utils/theme/app_theme.dart';
import 'package:bitnaro/presentation/choose_account/bloc/choose_account_type_bloc.dart';
import 'package:bitnaro/presentation/splash/bloc/splash_bloc.dart';
import 'package:bitnaro/presentation/splash/bloc/splash_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BitnaroApp extends StatelessWidget {
  const BitnaroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<SplashBloc>()..add(const AppStarted()),
        ),
        BlocProvider(create: (context) => sl<ChooseAccountTypeBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouteConfig.config,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        builder: (context, child) {
          AppTheme.applyStatusBarStyle(
            MediaQuery.platformBrightnessOf(context),
          );
          return child!;
        },
      ),
    );
  }
}
