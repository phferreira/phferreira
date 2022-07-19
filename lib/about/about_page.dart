import 'package:flutter/material.dart';
import 'package:phferreira/about/widgets/word_animation_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 8,
            child: WordAnimationWidget(),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
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
            ),
          ),
        ],
      ),
    );
  }
}
