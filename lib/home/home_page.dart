import 'package:flutter/material.dart';
import 'package:phferreira/about/about_page.dart';
import 'package:phferreira/contact/contact_page.dart';
import 'package:phferreira/experience/experience_page.dart';
import 'package:phferreira/work/work_page.dart';
import 'widgets/menu_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MenuButtonWidget(
                title: 'About',
                onPressed: () {
                  pageController.animateToPage(
                    0,
                    duration: const Duration(seconds: 1),
                    curve: Curves.decelerate,
                  );
                }),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            MenuButtonWidget(
                title: 'Experience',
                onPressed: () {
                  pageController.animateToPage(
                    1,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOutExpo,
                  );
                }),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            MenuButtonWidget(
                title: 'Work',
                onPressed: () {
                  pageController.animateToPage(
                    2,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeOutSine,
                  );
                }),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            MenuButtonWidget(
                title: 'Contact',
                onPressed: () {
                  pageController.animateToPage(
                    3,
                    duration: const Duration(seconds: 1),
                    curve: Curves.ease,
                  );
                }),
          ],
        ),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        child: PageView(
          scrollDirection: Axis.vertical,
          controller: pageController,
          pageSnapping: false,
          children: const [
            AboutPage(),
            ExperiencePage(),
            WorkPage(),
            ContactPage(),
          ],
        ),
      ),
    );
  }
}
