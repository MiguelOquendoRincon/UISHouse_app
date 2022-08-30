import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
  

class AppIcons {

  Widget filterIcon({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/iconsSVG/adjustments.svg",
      width: iconSize,
      height: iconSize,
      color: color,
    )
  );

  Widget appIcon({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/iconsSVG/app-icon.svg",
      width: iconSize,
      height: iconSize,
      color: color,
    )
  );

  Widget myAppIcon({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/myIcons/myapp_icon.svg",
      width: iconSize,
      height: iconSize,
      color: color,
    )
  );

  


  Widget searchIcon({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/iconsSVG/search.svg",
      width: iconSize,
      height: iconSize,
      // fit: BoxFit.fill,
      color: color,
    )
  );

  Widget userIcon({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/iconsSVG/user.svg",
      width: iconSize,
      height: iconSize,
      // fit: BoxFit.fill,
      color: color,
    )
  );


  Widget category({void Function()? onPressed,  Color? color, double? iconSize, int? idCategory}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      idCategory == 1 
      ? "assets/iconsSVG/building-community.svg"
      : idCategory == 2 
      ? "assets/iconsSVG/bath.svg"
      : idCategory == 3
      ? "assets/iconsSVG/bath-off.svg"
      : idCategory == 4
      ? "assets/myIcons/amoblada.svg"
      : idCategory == 5
      ? "assets/iconsSVG/bed.svg"
      : "assets/iconsSVG/info-circle.svg" ,
      width: iconSize,
      height: iconSize,
      // fit: BoxFit.fill,
      color: color,
    )
  );

  Widget homeIcon({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/iconsSVG/home.svg",
      width: iconSize,
      height: iconSize,
      // fit: BoxFit.fill,
      color: color,
    )
  );

  Widget newRoomIcon({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/myIcons/addRoom.svg",
      width: iconSize,
      height: iconSize,
      // fit: BoxFit.fill,
      color: color,
    )
  );

  Widget favoritesIcon({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/iconsSVG/bookmarks.svg",
      width: iconSize,
      height: iconSize,
      // fit: BoxFit.fill,
      color: color,
    )
  );

  Widget settingIcon({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/iconsSVG/settings.svg",
      width: iconSize,
      height: iconSize,
      // fit: BoxFit.fill,
      color: color,
    )
  );



}

// final appIcons = AppIcons();