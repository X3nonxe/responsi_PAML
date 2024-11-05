import 'package:flutter/material.dart';
import 'package:responsi/core/constants/strings.dart';
import 'package:responsi/core/constants/styles.dart';
import 'package:responsi/routes/routes_name.dart';
import 'package:responsi/widgets/custom_button.dart';
import 'package:responsi/widgets/custom_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 60),
            const Center(
              child: Text(
                AppStrings.forgotPassword,
                style: AppStyles.titleStyle,
              ),
            ),
            const SizedBox(height: 80),
            const Text(
              AppStrings.message,
              style: AppStyles.textStyleSecondary,
            ),
            const Center(
              child: Text(
                AppStrings.textForgotPassword,
                style: AppStyles.bodyStyle,
              ),
            ),
            const SizedBox(height: 20),
            Form(
              key: formKey,
              child: Column(
                children: [
                  CustomTextField(
                    label: AppStrings.textEmailField,
                    icon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 80),
            Center(
              child: CustomButton(
                text: AppStrings.buttonForgotPassword,
                width: 120,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, RouteNames.mainScreen);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
