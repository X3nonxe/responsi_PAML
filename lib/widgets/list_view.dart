import 'package:flutter/material.dart';
import 'package:responsi/core/constants/colors.dart';
import 'package:responsi/core/constants/styles.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.backgroudWhite,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(Icons.image, size: 60, color: Colors.grey),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Headline", style: AppStyles.itemTitleStyle),
                      const SizedBox(height: 4),
                      const Text(
                        "Description duis aute irure dolor in reprehenderit in volup...",
                        style: AppStyles.itemSubtitleStyle,
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.add_circle_outline, size: 16),
                              SizedBox(width: 4),
                              Text("Today • 23 min", style: AppStyles.itemSubtitleStyle),
                            ],
                          ),
                          IconButton(
                            icon: const Icon(Icons.play_arrow),
                            onPressed: () {
                              // Aksi memutar lagu
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
