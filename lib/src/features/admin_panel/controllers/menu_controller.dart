import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController{
  static MenuController get find => Get.find();

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldKey => _key;

  void controlMenu(){
   _key.currentState!.openDrawer();
  }

}