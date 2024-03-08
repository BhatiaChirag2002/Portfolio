import 'package:flutter/material.dart';
import 'package:portfolio/constant/my_colors.dart';
import 'package:portfolio/constant/my_text_style.dart';

class AnimatedText extends StatefulWidget {
  final double fontSize;
  const AnimatedText({super.key, required this.fontSize});

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  int _currentIndex = 0;
  int _currentCharIndex = 0;

  final List<String> _work = [
    'Pursuing BCA Student',
    'Flutter Developer',
    'Android Developer'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animatedText();
  }

  void _animatedText() {
    if (_currentCharIndex < _work[_currentIndex].length) {
      _currentCharIndex++;
    } else {
      _currentIndex = (_currentIndex + 1) % _work.length;
      _currentCharIndex = 0;
    }
    if (mounted) {
      setState(() {});
    }

    Future.delayed(const Duration(milliseconds: 200), () {
      _animatedText();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'I\'m a ${_work[_currentIndex].substring(0, _currentCharIndex)}',
      style: MyTextStyle.ubuntuMedium(
          fontSize: widget.fontSize, color: MyColors.white),
    );
  }
}
