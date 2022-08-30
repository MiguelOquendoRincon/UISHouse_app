import 'package:flutter/material.dart';
import 'package:uis_house/app/presentation/views/home/categories_home_view.dart';
import 'package:uis_house/app/presentation/views/home/home_view.dart';
import 'package:uis_house/app/presentation/views/home/lastest_post_view.dart';
import 'package:uis_house/app/presentation/views/home/search_bar_view.dart';
import 'package:uis_house/app/presentation/widgets/categories_list.dart';
import 'package:uis_house/app/presentation/widgets/top_screen.dart';



class IndexPageView extends StatelessWidget {
  const IndexPageView({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;
  static const List<String> images = [
    "assets/images/amoblada.jpg",
    "assets/images/apartaestudio.jpeg",
    "assets/images/baño_compartido.jpg",
    "assets/images/baño_privado.jpg",
    "assets/images/sin_amoblar.jpg"
  ];


  @override
  Widget build(BuildContext context) {
    Widget homeScreens =  Column(
      children: const [
        TopWelcome(),
        SizedBox(height: 40.0),
        SearchBar(),
        SizedBox(height: 40.0),
        CategoriesHome(),
        SizedBox(height: 10.0),
        LastestPostsHome(
          title: 'Últimas Publicaciones',
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
        ),
        SizedBox(height: 40.0),
      ],
    );
    
    // const [
    //   TopWelcome(),
    //   SizedBox(height: 40.0),
    //   SearchBar(),
    //   SizedBox(height: 40.0),
    //   CategoriesHome(),
    //   SizedBox(height: 10.0),
    //   LastestPostsHome(),
    //   SizedBox(height: 40.0),
    // ];

    Widget searchScreens = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GeneralTopView(title: "Encuentra aquí habitaciones facilmente!"),
        const SizedBox(height: 40.0),
        const SearchBar(),
        const SizedBox(height: 40.0),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CategoriesList(
              title: "Apartaestudios",
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
            ),

            CategoriesList(
              title: "Baño Privado",
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
            ),

            CategoriesList(
              title: "Baño Compartido",
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
            ),

            CategoriesList(
              title: "Amoblada",
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
            ),

            CategoriesList(
              title: "Sin Amoblar",
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
            ),
            SizedBox(height: 40.0),
          ],
        ),

        
        Text("BUSQUEDA")
      ],
    ); 

    Widget addNewRoomScreens = Column(
      children: [
        Text("AGREGAR")
      ],
    ); 


    Widget settingsScreens = Column(
      children: [
        Text("AJUSTES")
      ],
    ); 

    Widget favoriteScreens = Column(
      children: [
        Text("FAVORITOS")
      ],
    ); 


    




    List<Widget> mainScreens = [
      homeScreens,
      searchScreens,
      addNewRoomScreens,
      settingsScreens,
      favoriteScreens
    ];



    return mainScreens[index];
  }
}

