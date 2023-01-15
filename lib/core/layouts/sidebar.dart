import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            // child: Image.asset("assets/images/logo.png"),
            child: Text("Crypto Dashboard"),
          ),
          DrawerListTile(
            title: "Dashboard",
            iconOrImage: const Icon(
              FeatherIcons.home,
              color: Colors.white54,
              size: 16.0,
            ),
            press: () {},
          ),
          DrawerListTile(
            title: "Transaction",
            iconOrImage: const Icon(
              FeatherIcons.activity,
              color: Colors.white54,
              size: 16.0,
            ),
            press: () {},
          ),
          DrawerListTile(
            title: "Profile",
            iconOrImage: const Icon(
              FeatherIcons.user,
              color: Colors.white54,
              size: 16.0,
            ),
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            iconOrImage: const Icon(
              FeatherIcons.settings,
              color: Colors.white54,
              size: 16.0,
            ),
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.iconOrImage,
    required this.press,
  }) : super(key: key);

  final String title;
  final Widget iconOrImage;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: iconOrImage,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
