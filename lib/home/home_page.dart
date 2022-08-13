import 'package:flutter/material.dart';
import 'package:phferreira/about/about_page.dart';
import 'package:phferreira/contact/contact_page.dart';
import 'package:phferreira/experience/experience_page.dart';
import 'package:phferreira/work/work_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _selectedIndex = _pageController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          NavigationRail(
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
                _pageController.animateToPage(
                  index,
                  duration: const Duration(seconds: 1),
                  curve: Curves.ease,
                );
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text('About'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.computer),
                label: Text('Experience'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.work),
                label: Text('Work'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.contacts),
                label: Text('Contact'),
              ),
            ],
            selectedIndex: _selectedIndex,
            backgroundColor: Colors.black12,
          ),
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              trackVisibility: true,
              controller: _pageController,
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: _pageController,
                pageSnapping: false,
                children: const [
                  AboutPage(),
                  ExperiencePage(),
                  WorkPage(),
                  ContactPage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
