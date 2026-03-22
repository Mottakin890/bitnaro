import 'package:bitnaro/common/utils/theme/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void> showToast(String text) async {
  await Fluttertoast.cancel();
  await Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: AppColors.cBlack,
    textColor: AppColors.cWhite,
    fontSize: 14.sp,
  );
}
