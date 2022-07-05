import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          const SizedBox(
            height: 300,
          ),
          FittedBox(
            child: Text(
              'Paulo Henrique Ferreira',
              style: GoogleFonts.pacifico(
                fontSize: 64,
              ),
            ),
          ),
          const SizedBox(
            height: 300,
          ),
          SizedBox(
            width: 700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/github_logo.png'),
                  tooltip: 'GitHub',
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/linkedin_logo.png'),
                  tooltip: 'LinkedIn',
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/icons/facebook_logo.png'),
                  tooltip: 'Facebook',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
