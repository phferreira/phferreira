import 'package:flutter/material.dart';
import 'package:phferreira/about/widgets/social_media_widget.dart';
import 'package:phferreira/about/widgets/word_animation_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(24),
      color: Colors.black26,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
            flex: 8,
            child: WordAnimationWidget(),
          ),
          Expanded(
            flex: 2,
            child: SocialMediaWidget(),
          ),
        ],
      ),
    );
  }
}
