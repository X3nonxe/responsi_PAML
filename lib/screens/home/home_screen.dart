// screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:responsi/core/constants/colors.dart';
import 'package:responsi/core/constants/strings.dart';
import 'package:responsi/core/constants/styles.dart';
import 'package:responsi/routes/routes_name.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(100), // Tinggi AppBar dengan padding
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0), // Padding atas
          child: AppBar(
            automaticallyImplyLeading: false,
            title: const Column(
              children: [
                Icon(Icons.account_circle),
                Text(AppStrings.guest, style: AppStyles.itemTitleStyle),
              ],
            ),
            actions: [
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
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Widget Grid View
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  AppStrings.widgetGridView,
                  style: AppStyles.sectionTitleStyle,
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: () {
                    // Aksi menuju halaman grid view lainnya
                  },
                ),
              ],
            ),
            SizedBox(
              height: 120,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.0,
                ),
                itemCount: 5, // Jumlah item dalam grid
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
                        Icon(
                          Icons.category,
                          size: 40,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:
                              Text("Artist", style: AppStyles.itemTitleStyle),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:
                              Text("Song", style: AppStyles.itemSubtitleStyle),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // Widget List View
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Widget List View",
                  style: AppStyles.sectionTitleStyle,
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: () {
                    // Aksi menuju halaman list view lainnya
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Jumlah item dalam list
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
                        const Icon(
                          Icons.image,
                          size: 60,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Headline",
                                style: AppStyles.itemTitleStyle,
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "Description duis aute irure dolor in reprehenderit in volup...",
                                style: AppStyles.itemSubtitleStyle,
                              ),
                              const SizedBox(height: 4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(Icons.add_circle_outline, size: 16),
                                      SizedBox(width: 4),
                                      Text("Today • 23 min",
                                          style: AppStyles.itemSubtitleStyle),
                                    ],
                                  ),
                                  IconButton(
                                      icon: const Icon(Icons.play_arrow),
                                      onPressed: () {
                                        // Aksi memutar lagu
                                      }),
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Index halaman "Home"
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        onTap: (index) {
          // Navigasi sesuai dengan index
          if (index == 1) {
            Navigator.pushNamed(context, RouteNames.account);
          } else if (index == 2) {
            Navigator.pushNamed(context, RouteNames.login);
          }
        },
      ),
    );
  }
}
