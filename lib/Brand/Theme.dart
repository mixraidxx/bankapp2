import 'package:flutter/material.dart';
import 'Extensions.dart';

extension BrandTheme on ThemeData {
  static ThemeData get appTheme => ThemeData(
      primaryColor: BrandColors.primaryColor,
      accentColor: BrandColors.accentColor,
      backgroundColor: BrandColors.backgroundColor,
      scaffoldBackgroundColor: BrandColors.backgroundColor,
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: BrandColors.backgroundColorVariant,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16))),
      fontFamily: "Gilroy",
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              enableFeedback: false,
              primary: BrandColors.primaryColor,
              onPrimary: BrandColors.accentColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              textStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                  color: Colors.white))),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: BrandColors.secondaryColor)),
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Colors.white,
          selectedItemColor: BrandColors.accentColorVariant,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed),
      cardTheme: CardTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))));
}
