import 'package:flutter/material.dart';
import 'package:hackathon_project/misc/colors.dart';
import 'package:hackathon_project/screens/welcome_page.dart';
import 'package:hackathon_project/widgets/app_large_text.dart';
import 'package:hackathon_project/widgets/app_text.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppColors.mainColor),
            child: Row(
              children: [
                Icon(
                  Icons.travel_explore,
                  size: 48,
                  color: Colors.white,
                ),
                SizedBox(width: 18),
                AppLargeText(
                  text: 'Travel around',
                  color: Colors.white,
                  size: 25,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.place,
              color: AppColors.bigTextColor,
            ),
            title: const AppText(
              text: 'Places',
              color: AppColors.bigTextColor,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((ctx) => const WelcomePage()),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.restaurant,
              color: AppColors.bigTextColor,
            ),
            title: const AppText(
              text: 'Restaurants',
              color: AppColors.bigTextColor,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.hotel,
              color: AppColors.bigTextColor,
            ),
            title: const AppText(
              text: 'Hotels',
              color: AppColors.bigTextColor,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
