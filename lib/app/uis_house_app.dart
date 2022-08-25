import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uis_house/app/core/utils/app_theme.dart';
import 'package:uis_house/app/core/utils/env_utils.dart';
import 'package:uis_house/app/core/utils/screen_size.dart';
import 'package:uis_house/app/presentation/views/home/home_view.dart';

class UisHouseApp extends StatelessWidget {
  const UisHouseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

    // *En este apartado se configuran los colores del la barra de notificaciones, así como los de la navegación.
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0XFF0f64ee),
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color(0XFF0f64ee),
        systemNavigationBarIconBrightness: Brightness.light
      )
    );
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            ScreenSize().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: EnvUtils.isDebugMode2(),
              title: "UIS HOUSE",
              theme: AppTheme.appTheme,
              home: const HomeView()
            );
          }
        );
      }
    );
    
  }
}




