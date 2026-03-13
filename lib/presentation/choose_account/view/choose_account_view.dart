import 'package:bitnaro/common/resources/assets/app_assets.dart';
import 'package:bitnaro/common/resources/widgets/app_button.dart';
import 'package:bitnaro/common/utils/dependency_injection/dependency_injection.dart';
import 'package:bitnaro/common/utils/dimentions/spacings.dart';
import 'package:bitnaro/common/utils/theme/text_styles.dart';
import 'package:bitnaro/presentation/choose_account/bloc/choose_account_type_bloc.dart';
import 'package:bitnaro/presentation/choose_account/bloc/choose_account_type_event.dart';
import 'package:bitnaro/presentation/choose_account/bloc/choose_account_type_state.dart';
import 'package:bitnaro/presentation/choose_account/widget/account_type_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseAccountView extends StatelessWidget {
  const ChooseAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose Account Type',
          style: TextStyles.bodyXLBold(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacing.vertical(70),
            SizedBox(
              height: 269.h,
              width: 344.w,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocSelector<
                      ChooseAccountTypeBloc,
                      ChooseAccountTypeState,
                      bool
                    >(
                      selector: (state) =>
                          state.selectedAccountType == AccountType.user,
                      builder: (context, isSelected) {
                        return AccountTypeCard(
                          accountType: 'User',
                          accountTypeDescription:
                              'Someone who receives\nservices.',
                          accountTypeLogo: AppAssets.user,
                          isSelected: isSelected,
                          onTap: () {
                            context.read<ChooseAccountTypeBloc>().add(
                              const AccountTypeSelectedEvent(AccountType.user),
                            );
                          },
                        );
                      },
                    ),
                    Spacing.vertical(16),
                    BlocSelector<
                      ChooseAccountTypeBloc,
                      ChooseAccountTypeState,
                      bool
                    >(
                      selector: (state) =>
                          state.selectedAccountType == AccountType.service,
                      builder: (context, isSelected) {
                        return AccountTypeCard(
                          accountType: 'Service Provider',
                          accountTypeDescription:
                              'Someone who provides\nservices.',
                          accountTypeLogo: AppAssets.consumer,
                          isSelected: isSelected,
                          onTap: () {
                            context.read<ChooseAccountTypeBloc>().add(
                              const AccountTypeSelectedEvent(
                                AccountType.service,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Spacing.vertical(40),
            RPadding(
              padding: REdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: AppButton(
                onTap: () {},
                buttonTitle: 'Continue',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
