import 'package:bitnaro/presentation/auth/bloc/auth_bloc.dart';
import 'package:bitnaro/presentation/auth/bloc/auth_event.dart';
import 'package:bitnaro/presentation/auth/bloc/auth_state.dart';
import 'package:bitnaro/presentation/auth/widgets/auth_checkbox_term.dart';
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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
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
                            'Create Your Account',
                            style: TextStyles.bodyXLBold(),
                          ),
                          Spacing.vertical(20),
                          AuthTextField(
                            hintText: 'Name',
                            prefixIconPath: AppAssets.person,
                            controller: _nameController,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            validator: (value) =>
                                Validator.validateName(value ?? ''),
                          ),
                          Spacing.vertical(16),
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
                            textInputAction: TextInputAction.next,
                            validator: (value) =>
                                Validator.validatePassword(value ?? ''),
                            onFieldSubmitted: (_) => () {},
                          ),
                          Spacing.vertical(16),
                          AuthTextField(
                            hintText: 'Confirm Password',
                            prefixIconPath: AppAssets.lock,
                            isPassword: true,
                            controller: _confirmPasswordController,
                            textInputAction: TextInputAction.done,
                            validator: (value) {
                              if (value != _passwordController.text) {
                                return 'Passwords do not match';
                              }
                              return Validator.validatePassword(value ?? '');
                            },
                            onFieldSubmitted: (_) => () {},
                          ),
                          Spacing.vertical(16),
                          BlocSelector<AuthBloc, AuthState, bool>(
                            selector: (state) => state.isAgreed,
                            builder: (context, isAgreed) {
                              return AgreementSection(
                                isAgreed: isAgreed,
                                checkUnCheck: (val) {
                                  context.read<AuthBloc>().add(
                                    ToggleAgreementEvent(val ?? false),
                                  );
                                },
                                onTap: () {
                                  // TODO: Navigate to Terms & Condition
                                },
                              );
                            },
                          ),
                          Spacing.vertical(20),
                          BlocSelector<AuthBloc, AuthState, (AuthStatus, bool)>(
                            selector: (state) => (state.status, state.isAgreed),
                            builder: (context, data) {
                              final (status, isAgreed) = data;
                              final isLoading = status == AuthStatus.loading;
                              return AppButton(
                                onTap: (isAgreed && !isLoading) ? () {} : null,
                                buttonTitle: isLoading
                                    ? 'Signing up...'
                                    : 'Sign up',
                              );
                            },
                          ),
                          Spacing.vertical(30),
                          const Spacer(),
                          RichText(
                            text: TextSpan(
                              text: 'Already have an account? ',
                              style: TextStyles.bodySMRegular(
                                AppColors.softGrey,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Sign In',
                                  style: TextStyles.bodySMRegular(
                                    AppColors.primary,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      context.pushReplacement(AppRoutes.login);
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
