import 'package:flutter/material.dart';

class RecentFiles {
  final String title,date,size;
  final IconData icon;

  RecentFiles(this.title, this.date, this.size, this.icon);
}

List recentFiles = [
  RecentFiles("Figma files", "01_03_2098", "3.5mb", Icons.art_track),
  RecentFiles("Documents", "11_03_2098", "32mb", Icons.file_copy),
  RecentFiles("Sound Files", "21_03_2098", "22mb", Icons.surround_sound),
  RecentFiles("Media files", "9_03_2098", "27mb", Icons.play_arrow),
  RecentFiles("Xd files", "03_03_2012", "35mb", Icons.art_track),
  RecentFiles("pdf files", "29_03_2098", "23mb", Icons.file_copy),
];