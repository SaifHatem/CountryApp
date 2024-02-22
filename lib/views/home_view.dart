import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_country/widgets/home_circle_avatar.dart';
import 'package:my_country/widgets/home_grid_builder.dart';
import 'package:my_country/widgets/home_navigate_button_category.dart';
import 'package:my_country/widgets/home_page_text_category.dart';
import 'package:my_country/widgets/icon_button_category.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            SizedBox(
              width: size.width,
              height: size.height,
              child: SafeArea(
                child: FadeInUp(
                    delay: const Duration(milliseconds: 300),
                    child: HomeGridBuilder()),
              ),
            ),
            Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextHomePageCategory(size: size),
                const ButtonHomePageCategory(),
              ],
            ),
            const IconButtonCategory(),
            const CircleAvatarCategory(),
          ],
        ),
      ),
    );
  }
}
