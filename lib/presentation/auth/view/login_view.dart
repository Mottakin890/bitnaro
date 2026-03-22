import 'package:bitnaro/common/utils/configs/validator.dart';
import 'package:bitnaro/common/resources/assets/app_assets.dart';
import 'package:bitnaro/common/resources/widgets/app_button.dart';
import 'package:bitnaro/common/utils/dimentions/spacings.dart';
import 'package:bitnaro/common/utils/routes/app_routes.dart';
import 'package:bitnaro/common/utils/theme/app_colors.dart';
import 'package:bitnaro/common/utils/theme/text_styles.dart';
import 'package:bitnaro/presentation/auth/widgets/auth_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onLoginPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      // TODO: Implement login logic
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constrain) {
            return CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: RPadding(
                    padding: REdgeInsets.symmetric(horizontal: 16),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const Spacer(),
                          Image.asset(
                            AppAssets.appLogo,
                            height: 155.h,
                            width: 145.w,
                          ),
                          Spacing.vertical(40),
                          Text(
                            'Login To Your Account',
                            style: TextStyles.bodyXLBold(),
                          ),
                          Spacing.vertical(20),
                          AuthTextField(
                            hintText: 'Email',
                            prefixIconPath: AppAssets.email,
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            validator: (value) =>
                                Validator.validateEmail(value ?? ''),
                          ),
                          Spacing.vertical(16),
                          AuthTextField(
                            hintText: 'Password',
                            prefixIconPath: AppAssets.lock,
                            isPassword: true,
                            controller: _passwordController,
                            textInputAction: TextInputAction.done,
                            validator: (value) =>
                                Validator.validatePassword(value ?? ''),
                            onFieldSubmitted: (_) => _onLoginPressed(),
                          ),
                          Spacing.vertical(16),
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Forgot Password?',
                                style: TextStyles.bodySMRegular(
                                  AppColors.primary,
                                ),
                              ),
                            ),
                          ),
                          Spacing.vertical(20),
                          AppButton(
                            onTap: _onLoginPressed,
                            buttonTitle: 'Login',
                          ),
                          Spacing.vertical(30),
                          const Spacer(),
                          RichText(
                            text: TextSpan(
                              text: 'Don’t have an account? ',
                              style: TextStyles.bodySMRegular(
                                AppColors.softGrey,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Sign Up',
                                  style: TextStyles.bodySMRegular(
                                    AppColors.primary,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      context.pushReplacement(AppRoutes.signUp);
                                    },
                                ),
                              ],
                            ),
                          ),
                          Spacing.vertical(16),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
