import 'package:flutter/material.dart';

class MenuButtonWidget extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;

  const MenuButtonWidget({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  State<StatefulWidget> createState() => _MenuButtonWidgetState();
}

class _MenuButtonWidgetState extends State<MenuButtonWidget> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
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
