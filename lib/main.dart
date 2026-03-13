import 'package:bitnaro/app.dart';
import 'package:bitnaro/common/utils/dependency_injection/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main(List<String> args) async {
  await _init();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((
    _,
  ) {
    return runApp(
      const ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: BitnaroApp(),
      ),
    );
  });
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
}
