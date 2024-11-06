// screens/account/account_screen.dart
import 'package:flutter/material.dart';
import 'package:responsi/widgets/app_bar.dart';
import 'package:responsi/widgets/profile_section.dart';
import 'package:responsi/widgets/menu_list_tile.dart';
import 'package:responsi/screens/profile/profile_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool showProfileScreen = false;

  @override
  Widget build(BuildContext context) {
    if (showProfileScreen) {
      // Menampilkan ProfileScreen
      return ProfileScreen(
        onBack: () {
          setState(() {
            showProfileScreen = false;
          });
        },
      );
    }

    // Menampilkan AccountScreen (Halaman Utama Akun)
    return Scaffold(
      appBar: const CustomAppBar(showActions: false, showAccountIcon: false),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const ProfileSection(),
              const SizedBox(height: 30),
              MenuListTile(
                title: "Kelola Akun",
                icon: Icons.arrow_forward,
                onTap: () {
                  setState(() {
                    showProfileScreen = true;
                  });
                },
              ),
              const Divider(),
              MenuListTile(
                title: "Notifikasi",
                icon: Icons.arrow_forward,
                onTap: () {
                  // Navigasi ke halaman Notifikasi
                },
              ),
              const Divider(),
              MenuListTile(
                title: "Privacy Policy",
                icon: Icons.arrow_forward,
                onTap: () {
                  // Navigasi ke halaman Privacy Policy
                },
              ),
              const Divider(),
              MenuListTile(
                title: "Terms of Service",
                icon: Icons.arrow_forward,
                onTap: () {
                  // Navigasi ke halaman Terms of Service
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
