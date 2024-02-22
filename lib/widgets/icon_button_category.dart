import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_country/views/home_view.dart';

class IconButtonCategory extends StatelessWidget {
  const IconButtonCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      right: true,
      child: Align(
        alignment: Alignment.topRight,
        child: FadeInUp(
          delay: const Duration(milliseconds: 500),
          child: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomeView();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.refresh_rounded,
              color: Colors.amberAccent,
              size: 50,
            ),
          ),
        ),
      ),
    );
  }
}
