// screens/register_screen.dart
import 'package:flutter/material.dart';
import 'package:responsi/core/constants/strings.dart';
import 'package:responsi/core/constants/styles.dart';
import 'package:responsi/routes/routes_name.dart';
import 'package:responsi/widgets/custom_button.dart';
import 'package:responsi/widgets/custom_text_field.dart';
import 'package:responsi/widgets/form_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
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
                  AppStrings.register,
                  style: AppStyles.titleStyle,
                ),
              ),
              const SizedBox(height: 40),
              FormWidget(
                formKey: formKey,
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
                    CustomTextField(
                      label: AppStrings.textPasswordField,
                      icon: Icons.lock,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomTextField(
                      label: AppStrings.textPasswordAgainField,
                      icon: Icons.lock,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Harap konfirmasi password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppStrings.haveAccount),
                      ],
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteNames.login);
                      },
                      child: const Text(
                        AppStrings.login,
                        style: AppStyles.linkTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              Center(
                child: CustomButton(
                  text: AppStrings.register,
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
      ),
    );
  }
}
