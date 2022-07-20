import 'package:flutter/material.dart';
import 'package:phferreira/about/widgets/cursor_digit_widget.dart';

class WordAnimationWidget extends StatefulWidget {
  const WordAnimationWidget({
    super.key,
  });

  @override
  State<WordAnimationWidget> createState() => _WordAnimationWidgetState();
}

class _WordAnimationWidgetState extends State<WordAnimationWidget> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late double _time;
  final String _name = 'Paulo Henrique Ferreira';
  final String _subtitle = 'Web | Mobile | Desktop | Backend';

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.fill,
              child: SizedBox(
                width: 550,
                height: 60,
                child: Row(
                  children: [
                    const Expanded(child: SizedBox()),
                    Row(
                      children: [
                        for (int index = 0; index < _name.length; index++)
                          CursorDigitWidget(
                            letter: _name[index],
                            controller: _animationController,
                            begin: index * _time,
                            end: (index + 1) * _time,
                            fontSize: 32,
                          ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.fill,
              child: SizedBox(
                width: 550,
                height: 60,
                child: Row(
                  children: [
                    const Expanded(child: SizedBox()),
                    for (int index = 0; index < _subtitle.length; index++)
                      CursorDigitWidget(
                        letter: _subtitle[index],
                        controller: _animationController,
                        begin: (_name.length + index) * _time,
                        end: (_name.length + (index + 1)) * _time,
                        fontSize: 18,
                      ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _time = 1 / (_name.length + _subtitle.length);
  }
}
