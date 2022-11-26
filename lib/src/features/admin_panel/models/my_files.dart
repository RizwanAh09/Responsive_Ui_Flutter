import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/src/constants/constants.dart';

class CloudStorageInfo {
  final String title, totalStorage;
  final int numOfFiles, percentage;
  final Color color;
  final IconData icon;

  CloudStorageInfo(this.title, this.totalStorage, this.numOfFiles,
      this.percentage, this.color, this.icon);
}

List demoFiles = [
  CloudStorageInfo("Documents", "123GB", 7776, 35, primaryColor, Icons.file_copy),
  CloudStorageInfo("Google Drive", "170", 4675, 43, primaryColor, Icons.add_to_drive),
  CloudStorageInfo("One Drive", "150GB", 34567, 20, primaryColor, Icons.cloud),
  CloudStorageInfo("Documents", "123GB", 7776, 35, primaryColor, Icons.document_scanner),
];
