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


  Widget searchIcon({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/iconsSVG/search-outline.svg",
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

  Widget type2({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/iconsSVG/bath.svg",
      width: iconSize,
      height: iconSize,
      // fit: BoxFit.fill,
      color: color,
    )
  );

  Widget type3({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/iconsSVG/bath-off.svg",
      width: iconSize,
      height: iconSize,
      // fit: BoxFit.fill,
      color: color,
    )
  );

  Widget type4({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/myIcons/amoblada.svg",
      width: iconSize,
      height: iconSize,
      // fit: BoxFit.fill,
      color: color,
    )
  );

  Widget type5({void Function()? onPressed,  Color? color, double? iconSize}) => IconButton(
    onPressed: onPressed,
    iconSize: iconSize,
    icon: SvgPicture.asset(
      "assets/iconsSVG/bed.svg",
      width: iconSize,
      height: iconSize,
      // fit: BoxFit.fill,
      color: color,
    )
  );



}

// final appIcons = AppIcons();