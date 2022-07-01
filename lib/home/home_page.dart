import 'package:flutter/material.dart';
import 'widgets/menu_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MenuButtonWidget(title: 'About', onPressed: () {}),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            MenuButtonWidget(title: 'Experience', onPressed: () {}),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            MenuButtonWidget(title: 'Work', onPressed: () {}),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            MenuButtonWidget(title: 'Contact', onPressed: () {}),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Hello there',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
