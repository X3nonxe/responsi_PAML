// widgets/custom_button.dart
import 'package:flutter/material.dart';
import '../core/constants/colors.dart';
import '../core/constants/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  final double? width;       // Custom width
  final double? height;      // Custom height

  const CustomButton({
    super.key,
    required this.text,
    this.color = AppColors.primaryColor, // Default color dari konstanta
    required this.onPressed,
    this.width,                          // Nilai custom untuk width
    this.height = 50.0,                  // Default height
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,    // Gunakan `width` atau `double.infinity` sebagai default
      height: height,                     // Gunakan `height` yang diberikan atau default 50.0
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          text,
          style: AppStyles.buttonTextStyle,
        ),
      ),
    );
  }
}
