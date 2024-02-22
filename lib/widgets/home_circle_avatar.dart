import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CircleAvatarCategory extends StatelessWidget {
  const CircleAvatarCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: true,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FadeInUp(
          delay: const Duration(milliseconds: 500),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/my_image.jpg'),
            radius: 25,
          ),
        ),
      ),
    );
  }
}
