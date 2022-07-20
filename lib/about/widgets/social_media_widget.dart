import 'package:flutter/material.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/icons/github_logo_256_black.png',
              filterQuality: FilterQuality.medium,
            ),
            tooltip: 'GitHub',
            iconSize: 32,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/icons/linkedin_logo_256_black.png',
              filterQuality: FilterQuality.medium,
            ),
            tooltip: 'LinkedIn',
            iconSize: 32,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/icons/facebook_logo_256_black.png',
              filterQuality: FilterQuality.medium,
            ),
            tooltip: 'Facebook',
            iconSize: 32,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/icons/discord_logo_256_black.png',
              filterQuality: FilterQuality.medium,
            ),
            tooltip: 'Discord',
            iconSize: 32,
          ),
        ],
      ),
    );
  }
}
