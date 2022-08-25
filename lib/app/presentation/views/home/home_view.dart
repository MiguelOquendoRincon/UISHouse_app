import 'package:flutter/material.dart';
import 'package:uis_house/app/core/utils/app_icons.dart';
import 'package:uis_house/app/core/utils/screen_size.dart';
import 'package:uis_house/app/presentation/views/home/categories_home_view.dart';
import 'package:uis_house/app/presentation/views/home/search_bar_view.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}




class _HomeViewState extends State<HomeView> {

  List<String> images = ["assets/images/amoblada.jpg", "assets/images/apartaestudio.jpeg", "assets/images/baño_compartido.jpg", "assets/images/baño_privado.jpg", "assets/images/sin_amoblar.jpg"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopWelcome(),

                  SizedBox(height: 40.0),

                  SearchBar(),

                  SizedBox(height: 40.0),

                  CategoriesHome(),

                  SizedBox(height: 10.0),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Últimas Publicaciones",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: ScreenSize.widthMultiplier * 5.50
                        )
                      ),

                      const SizedBox(height: 10.0),

                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: images.length,
                        itemBuilder: (context, index){
                          return Stack(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      images[index],
                                      height: ScreenSize.heightMultiplier * 25.50,
                                      width: ScreenSize.widthMultiplier * 90.50,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),

                                Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topRight,
                                      width: ScreenSize.widthMultiplier * 90.50,
                                      // decoration: BoxDecoration(
                                      //   color: Color(0XFFFebe32)
                                      // ),
                                      child: Container(
                                        padding: EdgeInsets.all(5.0),
                                        width: ScreenSize.widthMultiplier * 20.50,
                                        decoration: BoxDecoration(
                                          color: Color(0XFFFebe32),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                          ),
                                        ),
                                        child: Text(
                                          "\$250.000",
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                            color: Colors.white,
                                            fontSize: ScreenSize.widthMultiplier * 4.2
                                          ),
                                        ),
                                      )
                                    ),
                                    Text("Habitación sin amoblar")
                                  ],
                                )
                              ],
                          );

                          
                        },
                      )
                    ],
                  ),



                ],
              ),
            ),
          ),
        ),
      );
  }
}





class TopWelcome extends StatelessWidget {
  const TopWelcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hola Miguel!",
              style: Theme.of(context).textTheme.bodyText1
            ),
            Text(
              "Bienvenido",
              style: Theme.of(context).textTheme.headline1
            ),
          ],
        ),

        CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          child: AppIcons().userIcon(color: Colors.white),
        )
      ],
    );
  }
}