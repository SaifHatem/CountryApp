import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeGridBuilder extends StatefulWidget {
  HomeGridBuilder({super.key});

  @override
  State<HomeGridBuilder> createState() => _HomeGridBuilderState();
}

class _HomeGridBuilderState extends State<HomeGridBuilder> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: Duration(seconds: model.length * 10), curve: Curves.linear);
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  List<String> model = const [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
    'assets/images/8.jpg',
    'assets/images/9.jpg',
    'assets/images/10.jpg',
    'assets/images/1.jpg',
    'assets/images/2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      controller: scrollController,
      physics: const BouncingScrollPhysics(),
      crossAxisCount: 4,
      itemCount: model.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image(
            image: AssetImage(model[index]),
            fit: BoxFit.cover,
          ),
        );
      },
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(2, index.isEven ? 4 : 2),
    );
  }
}
