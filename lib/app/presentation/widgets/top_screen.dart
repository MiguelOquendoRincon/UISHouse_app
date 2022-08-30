import 'package:flutter/material.dart';
import 'package:uis_house/app/core/utils/app_icons.dart';
import 'package:uis_house/app/core/utils/screen_size.dart';

class GeneralTopView extends StatelessWidget {
  const GeneralTopView({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: ScreenSize.widthMultiplier * 50.0,
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: Theme.of(context).textTheme.bodyText1
              ),
            ),
          ],
        ),
        AppIcons().myAppIcon(
          // color: Theme.of(context).primaryColor,
          iconSize: ScreenSize.widthMultiplier * 20.0,
        )
      ],
    );
  }
}