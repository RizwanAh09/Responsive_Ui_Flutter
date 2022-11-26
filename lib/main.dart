import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/src/constants/constants.dart';
import 'package:flutter_admin_panel/src/features/admin_panel/screens/main_screen/main_Screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
    debugShowCheckedModeBanner: false,
      title: "Flutter Admin Panel",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.apply(bodyColor: Colors.white),
        ),canvasColor: secondaryColor,
      ),
      home: MainScreen(),
    );
  }
}
