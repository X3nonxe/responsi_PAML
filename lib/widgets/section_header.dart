import 'package:flutter/material.dart';
import 'package:responsi/core/constants/styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const SectionHeader({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyles.sectionTitleStyle),
        IconButton(
          icon: const Icon(Icons.arrow_forward),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
