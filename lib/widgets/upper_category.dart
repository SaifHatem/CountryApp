import 'package:flutter/material.dart';
import 'package:my_country/animations/fade_animation.dart';

class HeadCategory extends StatelessWidget {
  const HeadCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 365,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/black_background.png',
          ),
        ),
      ),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 55.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: FadeAnimation(
                2,
                Text(
                  'Our World',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                    fontSize: 35,
                  ),
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(top: 8.0),
          //   child: FadeAnimation(
          //       1,
          //       Text(
          //         'عالمنا',
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontFamily: 'Pacifico',
          //           fontSize: 40,
          //         ),
          //       )),
          // ),
        ],
      ),

      //Stack(
      //   children: [
      //     Positioned(
      //         width: 80,
      //         height: 200,
      //         left: 30,
      //         child: FadeAnimation(
      //           1,
      //           Container(
      //             decoration: const BoxDecoration(
      //               image: DecorationImage(
      //                 image: AssetImage('assets/images/light-1.png'),
      //               ),
      //             ),
      //           ),
      //         )),
      //     Positioned(
      //         width: 80,
      //         height: 120,
      //         left: 100,
      //         child: FadeAnimation(
      //           1.5,
      //           Container(
      //             decoration: const BoxDecoration(
      //               image: DecorationImage(
      //                 image: AssetImage('assets/images/light-2.png'),
      //               ),
      //             ),
      //           ),
      //         )),
      //     Positioned(
      //         width: 50,
      //         height: 250,
      //         left: 280,
      //         child: FadeAnimation(
      //           2,
      //           Container(
      //             decoration: const BoxDecoration(
      //               image: DecorationImage(
      //                 image: AssetImage('assets/images/clock.png'),
      //               ),
      //             ),
      //           ),
      //         )),
      //   ],
      // ),
    );
  }
}
