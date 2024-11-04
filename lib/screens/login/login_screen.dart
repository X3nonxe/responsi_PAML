// screens/login_screen.dart
import 'package:flutter/material.dart';
import 'package:responsi/core/constants/colors.dart';
import 'package:responsi/core/constants/strings.dart';
import 'package:responsi/core/constants/styles.dart';
import 'package:responsi/routes/routes_name.dart';
import 'package:responsi/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
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
                  AppStrings.login,
                  style: AppStyles.titleStyle,
                ),
              ),
              const SizedBox(height: 40),

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
              const SizedBox(height: 20),

              // Input Password
              const TextField(
                decoration: InputDecoration(
                  labelText: AppStrings.textPasswordField,
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: AppColors.accentColor),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),

              // Teks "Belum punya akun?" dan "Lupa password" serta "Daftar"
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(AppStrings.noAccount),
                        GestureDetector(
                          onTap: () {
                            // Navigasi ke halaman lupa password
                            Navigator.pushNamed(
                                context, RouteNames.forgotPassword);
                          },
                          child: const Text(
                            AppStrings.forgotPassword,
                            style: AppStyles.linkTextStyle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // Teks "Daftar" dengan posisi sejajar "Belum punya akun?"
                    GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman registrasi
                        Navigator.pushNamed(context, RouteNames.register);
                      },
                      child: const Text(
                        AppStrings.register,
                        style: AppStyles.linkTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 120),

              // Tombol Login menggunakan CustomButton
              Center(
                child: CustomButton(
                  text: AppStrings.login,
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
      ),
    );
  }
}
