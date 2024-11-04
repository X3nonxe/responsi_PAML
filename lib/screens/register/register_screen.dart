// screens/RegisterScreen_screen.dart
import 'package:flutter/material.dart';
import 'package:responsi/core/constants/colors.dart';
import 'package:responsi/core/constants/strings.dart';
import 'package:responsi/core/constants/styles.dart';
import 'package:responsi/routes/routes_name.dart';
import 'package:responsi/widgets/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                  AppStrings.register,
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

              // Input Password Again
              const TextField(
                decoration: InputDecoration(
                  labelText: AppStrings.textPasswordAgainField,
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

              // Teks "Sudah punya akun?" dan "Daftar"
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

                    // Teks "Masuk"
                    GestureDetector(
                      onTap: () {
                        // Navigasi ke halaman registrasi
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
      ),
    );
  }
}
