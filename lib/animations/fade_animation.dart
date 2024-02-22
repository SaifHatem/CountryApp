import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

//enum AniProps { opacity, translateY }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween('opacity', Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 200))
          .thenTween('y', Tween(begin: -30.0, end: 0.0),
              duration: const Duration(seconds: 2), curve: Curves.easeOut);

    return PlayAnimationBuilder<Movie>(
      delay: Duration(milliseconds: (200 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, value, child) => Opacity(
        opacity: value.get("opacity"),
        child: Transform.translate(
            offset: Offset(0, value.get("y")), child: child),
      ),
    );
  }
}
