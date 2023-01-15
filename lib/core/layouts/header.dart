import 'package:crypto_dashboard/common/night-switch.dart';
import 'package:crypto_dashboard/common/profile-card.dart';
import 'package:crypto_dashboard/common/search.dart';
import 'package:crypto_dashboard/core/constants.dart';
import 'package:crypto_dashboard/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        const Expanded(child: SearchField()),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        NightModeSwitch(
          value: true,
          onChanged: (value) => {},
        ),
        const VerticalDivider(
          color: Colors.white70,
          thickness: 1,
          width: defaultPadding,
        ),
        IconButton(
          icon: const Icon(
            FeatherIcons.bell,
            size: 18.0,
          ),
          onPressed: () => {},
        ),
        const ProfileCard(),
      ],
    );
  }
}
