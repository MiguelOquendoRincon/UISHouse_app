import 'package:flutter/material.dart';
import 'package:uis_house/app/core/utils/app_icons.dart';
import 'package:uis_house/app/core/utils/screen_size.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenSize.widthMultiplier * 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            child: Container(
              width: ScreenSize.widthMultiplier * 70.0,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Buscar habitación aquí",
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: Colors.grey,
                      fontSize: ScreenSize.widthMultiplier * 3.20
                    ),
                  ),

                  AppIcons().searchIcon(color: Colors.grey)
                ],
              ),
            ),
          ),

          Card(
            
            color: Theme.of(context).primaryColor,
            child: AppIcons().filterIcon(color: Colors.white),
          )
        ],
      ),
    );
  }
}