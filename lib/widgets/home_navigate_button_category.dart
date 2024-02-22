import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_country/views/contents_view.dart';

class ButtonHomePageCategory extends StatelessWidget {
  const ButtonHomePageCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FadeInUp(
        delay: const Duration(milliseconds: 700),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const ContenentsView();
                },
              ),
            );
          },
          child: Container(
            height: 55,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: const Color.fromARGB(186, 59, 12, 12),
            ),
            child: Center(
              child: FadeInUp(
                delay: const Duration(milliseconds: 1000),
                child: const Text(
                  "Start Journey",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
