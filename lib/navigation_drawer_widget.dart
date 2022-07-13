import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            buildMenuItem(
              icon: Icons.favorite_border_outlined,
              text: 'My Courses',
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              icon: Icons.download_outlined,
              text: 'Downloads',
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              icon: Icons.favorite_border_outlined,
              text: 'Assignments',
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              icon: Icons.timelapse_outlined,
              text: 'Deadlines',
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              icon: Icons.settings_outlined,
              text: 'Settings',
            ),
            const Divider(
              thickness: 2.0,
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              icon: Icons.info_outline,
              text: 'Info',
            ),
            const SizedBox(height: 10),
            buildMenuItem(
              icon: Icons.logout_outlined,
              text: 'Log out',
            ),
          ],
        ),
      ),
    ));
  }
}

Widget buildMenuItem({
  required IconData icon,
  required String text,
}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(
      text,
      style: const TextStyle(
        fontSize: 16,
      ),
    ),
    onTap: () {},
  );
}
