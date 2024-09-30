import 'package:flutter/material.dart';

class ElementCroisement extends StatefulWidget {
  @override
  _ElementCroisementState createState() => _ElementCroisementState();
}

class _ElementCroisementState extends State<ElementCroisement>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<Offset> _slideleftAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );

    _slideleftAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 250),
        SlideTransition(
          position: _slideleftAnimation,
          child: Center(
              child: Image.asset(
            'assets/images/engagement2.png',
          )),
        ),
        const SizedBox(
          width: 10,
        ),
        Image.asset("assets/images/engagement1.png")
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
