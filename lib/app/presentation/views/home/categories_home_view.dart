import 'package:flutter/material.dart';
import 'package:uis_house/app/core/utils/app_icons.dart';
import 'package:uis_house/app/core/utils/screen_size.dart';

class CategoriesHome extends StatelessWidget {
  const CategoriesHome({
    Key? key,
  }) : super(key: key);

  static const List<String> categorys = ["Aparta-estudio", "Baño Privado", "Baño Compartido", "Amoblada", "Sin amoblar"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categorias",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: ScreenSize.widthMultiplier * 5.50
          )
        ),

        const Divider(),

        SizedBox(
          height: ScreenSize.heightMultiplier * 20.0,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categorys.length,
            itemBuilder: (context, index){
              return Card(
                shadowColor: Theme.of(context).primaryColor,
                elevation: 2.0,
                child: SizedBox(
                  width: ScreenSize.widthMultiplier * 33.33,
                  child: Padding(
                    padding: EdgeInsets.only(left: ScreenSize.widthMultiplier * 2.1),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: ScreenSize.heightMultiplier * 1.8, bottom: ScreenSize.heightMultiplier * 0.50, right: ScreenSize.widthMultiplier * 2.1),
                          child: Text(
                            categorys[index],
                            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: ScreenSize.widthMultiplier * 3.7,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                        Text(
                          "Total Category",
                          style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: ScreenSize.widthMultiplier * 3.2
                          )
                        ),
                        Center(
                          child: SizedBox(
                            width: ScreenSize.widthMultiplier * 20.0,
                            height: ScreenSize.heightMultiplier * 10.0,
                            child: AppIcons().category(
                              idCategory: index+1,
                              iconSize: ScreenSize.widthMultiplier * 10.0
                            )
                          ),
                        ),
                        Text(
                          "Ver más...",
                          style: Theme.of(context).textTheme.bodyText2!
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          ),
        ),
        const Divider(),
      ],
    );
  }
}