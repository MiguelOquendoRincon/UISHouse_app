import 'package:flutter/material.dart';
import 'package:uis_house/app/core/utils/screen_size.dart';
import 'package:uis_house/app/presentation/widgets/full_size_image_list.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key? key,
    this.physics = const NeverScrollableScrollPhysics(),
    this.scrollDirection = Axis.vertical,
    this.cardWidth,
    this.cardHeight,
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
  final double? cardWidth;
  final double? cardHeight;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: ScreenSize.widthMultiplier * 5.50)
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: scrollDirection == Axis.vertical ? null : ScreenSize.heightMultiplier * 27.0,
          child: ListView.builder(
            shrinkWrap: true,
            physics: physics,
            scrollDirection: scrollDirection ?? Axis.vertical,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return FullImageContainer(
                horizontalMargin: scrollDirection == Axis.vertical ? 0 : 10.0,
                imagePath: images[index], 
                cost: cost, 
                type: type, 
                zone: zone,
                
              );
            },
          ),
        )
      ],
    );
  }
}


