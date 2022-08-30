import 'package:flutter/material.dart';
import 'package:uis_house/app/core/utils/screen_size.dart';

/// FullImageContainer Class
/// 
/// This class draw a Image Card. If horizontalMargin != 0 means that the image will be draw on horizontal listview.
class FullImageContainer extends StatelessWidget {
  const FullImageContainer({
    Key? key,
    required this.imagePath,
    required this.cost,
    required this.type,
    required this.zone,
    this.cardWidth,
    this.cardHeight,
    this.horizontalMargin = 0.0
  }) : super(key: key);

  final String imagePath;
  final String cost;
  final String type;
  final String zone;
  final double? cardWidth;
  final double? cardHeight;
  final double horizontalMargin;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10, left: horizontalMargin, right: horizontalMargin),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              imagePath,
              height: horizontalMargin != 0 ? ScreenSize.heightMultiplier * 18.50 : ScreenSize.heightMultiplier * 25.50,
              width:  horizontalMargin != 0 ? ScreenSize.widthMultiplier * 50.0 : ScreenSize.widthMultiplier * 90.50,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.topRight,
                width: horizontalMargin != 0 ? ScreenSize.widthMultiplier * 52.70 : ScreenSize.widthMultiplier * 90.50,
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  width: ScreenSize.widthMultiplier * 20.50,
                  decoration: const BoxDecoration(
                    color: Color(0XFFFebe32),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "\$ $cost",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                      fontSize: ScreenSize.widthMultiplier * 4.2
                    ),
                  ),
                )),
            Container(
                alignment: Alignment.bottomLeft,
                height: horizontalMargin != 0 ? ScreenSize.heightMultiplier * 15.20 : ScreenSize.heightMultiplier * 22.250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      width: ScreenSize.widthMultiplier * 30.50,
                      margin: EdgeInsets.only(top: ScreenSize.heightMultiplier * 2.0, left: horizontalMargin),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            zone,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Colors.white,
                              fontSize: ScreenSize.widthMultiplier * 4.2
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        )
      ],
    );
  }
}