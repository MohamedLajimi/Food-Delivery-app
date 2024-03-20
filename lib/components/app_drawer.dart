import 'package:flutter/material.dart';
import 'package:food_app/components/drawer_tile.dart';
import 'package:food_app/modules/auth/views/login_screen.dart';
import 'package:food_app/modules/settings_screen.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.only(top: 80, bottom: 20),
        child: Column(children: [
          Icon(
            Icons.food_bank_rounded,
            color: Theme.of(context).colorScheme.inversePrimary,
            size: 100,
          ),
          Divider(
            color: Theme.of(context).colorScheme.secondary,
          ),
          DrawerTile(
            text: 'H O M E',
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          DrawerTile(
            text: 'C A R T',
            icon: Icons.shopping_cart,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          DrawerTile(
            text: 'S E T T I N G S',
            icon: Icons.settings,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ));
            },
          ),
          const Spacer(),
          DrawerTile(
            text: 'L O G O U T',
            icon: Icons.logout,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ));
            },
          )
        ]),
      ),
    );
  }
}
