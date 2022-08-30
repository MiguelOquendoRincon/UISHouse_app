import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uis_house/app/core/utils/app_icons.dart';
import 'package:uis_house/app/presentation/views/index_page.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}




class _HomeViewState extends State<HomeView> {

  static const List<Widget> _pages = <Widget>[
  Icon(
    Icons.call,
    size: 150,
  ),
  Icon(
    Icons.camera,
    size: 150,
  ),
  Icon(
    Icons.chat,
    size: 150,
  ),
];
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      // 
                    children: [
                      IndexPageView(index: _currentTab),
                    ],
                  ),
                ),
              ),

              Align(
                alignment: FractionalOffset.bottomCenter,
                child: SizedBox(
                  // height: 80.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 10.0,
                        sigmaY: 10.0
                      ),
                      child: Opacity(
                        opacity: 0.8,
                        child: BottomNavigationBar(
                          currentIndex: _currentTab,
                          onTap: (int index) {
                            setState(() {
                              _currentTab = index;
                            });
                          },
                          selectedItemColor: Colors.black,
                          items: <BottomNavigationBarItem>[
                            BottomNavigationBarItem(
                              icon: AppIcons().homeIcon(
                                color: _currentTab == 0 ? Colors.black : Colors.grey
                              ),
                              label: "Home"
                            ),

                            BottomNavigationBarItem(
                              icon: AppIcons().searchIcon(
                                color: _currentTab == 1 ? Colors.black : Colors.grey
                              ),
                              label: "Búscar"
                            ),

                            BottomNavigationBarItem(
                              icon: AppIcons().newRoomIcon(
                                color: _currentTab == 2 ? Colors.black : Colors.grey
                              ),
                              label: "Agregar"
                            ),

                            BottomNavigationBarItem(
                              icon: AppIcons().settingIcon(
                                color: _currentTab == 3 ? Colors.black : Colors.grey
                              ),
                              label: "Ajustes"
                            ),
                            
                            BottomNavigationBarItem(
                              icon: AppIcons().favoritesIcon(
                                color: _currentTab == 4 ? Colors.black : Colors.grey
                              ),
                              label: "Favoritos"
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
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