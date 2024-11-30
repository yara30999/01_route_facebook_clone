import 'package:flutter/material.dart';
import 'colors_manager.dart';
import 'styles_manager.dart';

ThemeData getLightTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorsManager.white,

    // app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: false,
      backgroundColor: ColorsManager.white,
      //titleSpacing: 0,
      elevation: 8,
      shadowColor: ColorsManager.black,
      titleTextStyle: Styles.style14Bold(),
      toolbarTextStyle: Styles.style14Bold(),
    ),
    // divider theme
    dividerTheme: DividerThemeData(
      color: ColorsManager.grey,
      thickness: 2,
    ),
    // text selection theme
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorsManager.blue,
      selectionColor: ColorsManager.grey.withOpacity(0.5),
      // Change the handle to blue for the text form field ;)
      selectionHandleColor: ColorsManager.blue,
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        //side: const BorderSide(color: ColorsManager.blue, width: 2),
        foregroundColor: ColorsManager.white,
        backgroundColor: ColorsManager.blue,
        textStyle: Styles.style16Bold(),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    // text form field theme
    inputDecorationTheme: InputDecorationTheme(
      // content padding
      contentPadding: const EdgeInsets.all(16),
      hintStyle: Styles.style16Medium().copyWith(color: ColorsManager.grey),
      errorStyle: Styles.style14Bold().copyWith(color: ColorsManager.red),
      labelStyle: Styles.style16Medium().copyWith(color: ColorsManager.black),
      //default border
      border: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.grey, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(16))),
      // enabled border style
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.grey, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(16))),
      // focused border style
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.grey, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(16))),
      // error border style
      errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.red, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(16))),
      // focused border style
      focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.red, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(16))),
    ),
  );
}
