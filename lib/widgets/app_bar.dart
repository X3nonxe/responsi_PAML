import 'package:flutter/material.dart';
import 'package:responsi/core/constants/strings.dart';
import 'package:responsi/core/constants/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showActions;
  final bool showAccountIcon;

  const CustomAppBar({
    super.key,
    this.showActions = true,
    this.showAccountIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Column(
        children: [
          if (showAccountIcon) ...[
            const Icon(Icons.account_circle),
            const Text(AppStrings.guest, style: AppStyles.itemTitleStyle),
          ],
        ],
      ),
      actions: showActions
          ? [
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  // Aksi notifikasi
                },
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  // Aksi pengaturan
                },
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
