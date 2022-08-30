import 'package:flutter/material.dart';
import 'package:uis_house/app/core/utils/screen_size.dart';
import 'package:uis_house/app/presentation/widgets/categories_list.dart';
import 'package:uis_house/app/presentation/widgets/full_size_image_list.dart';

class LastestPostsHome extends StatelessWidget {
  const LastestPostsHome({
    Key? key,
    this.physics = const NeverScrollableScrollPhysics(),
    this.scrollDirection,
    required this.title
  }) : super(key: key);

  static const List<String> images = [
    "assets/images/amoblada.jpg",
    "assets/images/apartaestudio.jpeg",
    "assets/images/baño_compartido.jpg",
    "assets/images/baño_privado.jpg",
    "assets/images/sin_amoblar.jpg"
  ];
  static const String cost = "250.000";
  static const String zone = "San Francisco";
  static const String type = "Apartaestudio";
  final ScrollPhysics? physics;
  final Axis? scrollDirection;
  final String title;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoriesList(
          title: title,
          scrollDirection: scrollDirection,
          physics: physics,
        )
      ],
    );
  }
}


