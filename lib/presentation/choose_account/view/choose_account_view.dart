import 'package:bitnaro/common/utils/theme/text_styles.dart';
import 'package:flutter/material.dart';

class ChooseAccountView extends StatelessWidget {
  const ChooseAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Choose Account',
          style: TextStyles.h1(),
        ),
      ),
    );
  }
}
