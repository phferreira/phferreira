import 'package:flutter/material.dart';

class CursorWidget extends StatefulWidget {
  const CursorWidget({super.key});

  @override
  State<CursorWidget> createState() => _CursorWidgetState();
}

class _CursorWidgetState extends State<CursorWidget> with SingleTickerProviderStateMixin {
  late AnimationController _animation;
  late Animation _colorAnimation;

  @override
  void initState() {
    super.initState();
    _animation = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation.repeat();
    _colorAnimation = ColorTween(begin: Colors.white70, end: Colors.transparent).animate(_animation);
    _animation.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 8,
      color: _colorAnimation.value,
    );
  }
}
