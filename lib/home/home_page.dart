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
  void dispose() {
    pageController.dispose();
    super.dispose();
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
              page: 0,
              controller: pageController,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            MenuButtonWidget(
              title: 'Experience',
              page: 1,
              controller: pageController,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            MenuButtonWidget(
              title: 'Work',
              page: 2,
              controller: pageController,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            MenuButtonWidget(
              title: 'Contact',
              page: 3,
              controller: pageController,
            ),
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
