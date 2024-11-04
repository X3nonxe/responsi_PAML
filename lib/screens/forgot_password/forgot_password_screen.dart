// screens/ForgotPasswordScreen_screen.dart
import 'package:flutter/material.dart';
import 'package:responsi/core/constants/colors.dart';
import 'package:responsi/core/constants/strings.dart';
import 'package:responsi/core/constants/styles.dart';
import 'package:responsi/routes/routes_name.dart';
import 'package:responsi/widgets/custom_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo
            const SizedBox(height: 80),
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 60),

            // Text "Masuk"
            const Center(
              child: Text(
                AppStrings.forgotPassword,
                style: AppStyles.titleStyle,
              ),
            ),
            const SizedBox(height: 80),

            // message
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

            // Input Email
            const TextField(
              decoration: InputDecoration(
                labelText: AppStrings.textEmailField,
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                prefixIcon: Icon(Icons.email),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  borderSide: BorderSide(color: AppColors.accentColor),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 110),

            // Tombol Login menggunakan CustomButton
            Center(
              child: CustomButton(
                text: AppStrings.register,
                width: 120,
                onPressed: () {
                  // Implementasi login
                  Navigator.pushNamed(context, RouteNames.home);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
