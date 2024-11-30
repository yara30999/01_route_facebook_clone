import 'package:flutter/material.dart';
import 'colors_manager.dart';

class FontConstants {
  static const String fontInter = "Inter";
}

abstract class Styles {
  static TextStyle style24Bold() {
    return const TextStyle(
      fontFamily: FontConstants.fontInter,
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: ColorsManager.black,
    );
  }

  static TextStyle style16Bold() {
    return const TextStyle(
      fontFamily: FontConstants.fontInter,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorsManager.black,
    );
  }

  static TextStyle style12Medium() {
    return const TextStyle(
        fontSize: 12,
        fontFamily: FontConstants.fontInter,
        fontWeight: FontWeight.w500,
        color: ColorsManager.white);
  }

  static TextStyle style12Bold() {
    return const TextStyle(
        fontSize: 12,
        fontFamily: FontConstants.fontInter,
        fontWeight: FontWeight.w600,
        color: Color(0xFF000000));
  }

  static TextStyle style16Medium() {
    return const TextStyle(
        fontSize: 16,
        fontFamily: FontConstants.fontInter,
        fontWeight: FontWeight.w500,
        color: ColorsManager.white);
  }

  static TextStyle style14Bold() {
    return const TextStyle(
      fontFamily: FontConstants.fontInter,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: ColorsManager.white,
    );
  }
}
