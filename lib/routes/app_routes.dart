// routes/app_routes.dart
import 'package:flutter/material.dart';
import 'package:responsi/routes/routes_name.dart';
import 'package:responsi/screens/account/account_screen.dart';
import 'package:responsi/screens/forgot_password/forgot_password_screen.dart';
import 'package:responsi/screens/home/home_screen.dart';
import 'package:responsi/screens/login/login_screen.dart';
import 'package:responsi/screens/main_screen.dart';
import 'package:responsi/screens/profile/profile_screen.dart';
import 'package:responsi/screens/register/register_screen.dart';
import 'package:responsi/screens/splash/spash_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RouteNames.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RouteNames.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case RouteNames.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case RouteNames.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RouteNames.account:
        return MaterialPageRoute(builder: (_) => const AccountScreen());
      case RouteNames.profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case RouteNames.mainScreen:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
