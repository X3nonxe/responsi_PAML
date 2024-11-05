import 'package:flutter/material.dart';
import 'package:responsi/core/constants/strings.dart';
import 'package:responsi/widgets/app_bar.dart';
import 'package:responsi/widgets/section_header.dart';
import 'package:responsi/widgets/grid_view.dart';
import 'package:responsi/widgets/list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(
              title: AppStrings.widgetGridView,
              onPressed: () {
                // Aksi menuju halaman grid view lainnya
              },
            ),
            const GridViewWidget(),
            const SizedBox(height: 20),
            SectionHeader(
              title: "Widget List View",
              onPressed: () {
                // Aksi menuju halaman list view lainnya
              },
            ),
            const ListViewWidget(),
          ],
        ),
      ),
    );
  }
}
