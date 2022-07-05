import 'package:flutter/material.dart';

class MenuButtonWidget extends StatefulWidget {
  final String title;
  final PageController controller;
  final int page;

  const MenuButtonWidget({
    super.key,
    required this.title,
    required this.controller,
    required this.page,
  });

  @override
  State<StatefulWidget> createState() => _MenuButtonWidgetState();
}

class _MenuButtonWidgetState extends State<MenuButtonWidget> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        widget.controller.animateToPage(
          widget.page,
          duration: const Duration(milliseconds: 900),
          curve: Curves.decelerate,
        );
        setState(() {});
      },
      child: Text(
        widget.title,
        style: TextStyle(
          color: isHover ? Colors.deepPurple : Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      onHover: (hover) {
        isHover = hover;
        setState(() {});
      },
    );
  }
}
