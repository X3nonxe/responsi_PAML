// widgets/menu_list_tile.dart
import 'package:flutter/material.dart';

class MenuListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const MenuListTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Icon(icon),
      onTap: onTap,
    );
  }
}
