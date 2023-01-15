import 'package:crypto_dashboard/core/constants.dart';
import 'package:crypto_dashboard/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      child: Row(
        children: [
          const CircleImage(
            image: "assets/images/profile_pic.jpg",
            height: 40,
          ),
          if (!Responsive.isMobile(context))
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text("Nishar Multani"),
            ),
          const Icon(FeatherIcons.chevronDown),
        ],
      ),
    );
  }
}

class CircleImage extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final double radius;
  final BoxFit fit;

  const CircleImage({
    Key? key,
    required this.image,
    this.width = 50,
    this.height = 50,
    this.radius = 25,
    this.fit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Image.asset(
        image,
        fit: fit,
        height: height,
        width: width,
      ),
    );
  }
}
