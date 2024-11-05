import 'package:flutter/material.dart';
import 'package:responsi/core/constants/colors.dart';
import 'package:responsi/core/constants/styles.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10,
          childAspectRatio: 1.0,
        ),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.cardBackgroundColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.category, size: 40, color: Colors.grey),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Artist", style: AppStyles.itemTitleStyle),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Song", style: AppStyles.itemSubtitleStyle),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
