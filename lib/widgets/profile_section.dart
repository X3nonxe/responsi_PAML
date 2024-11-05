// widgets/profile_section.dart
import 'package:flutter/material.dart';
import 'package:responsi/core/constants/colors.dart';
import 'package:responsi/core/constants/styles.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.borderColor,
                width: 2,
              ),
            ),
            child: const Icon(
              Icons.account_circle,
              size: 80,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Ahmad Taufiq Rohman",
            style: AppStyles.profileNameStyle,
          ),
          const Text(
            "Universitas Teknologi Yogyakarta",
            style: AppStyles.profileSubtitleStyle,
          ),
        ],
      ),
    );
  }
}
