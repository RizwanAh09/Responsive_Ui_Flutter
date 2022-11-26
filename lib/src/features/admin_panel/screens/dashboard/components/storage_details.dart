import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/src/features/admin_panel/screens/dashboard/components/pie_chart.dart';
import 'package:flutter_admin_panel/src/features/admin_panel/screens/dashboard/components/storage_info_card.dart';

import '../../../../../constants/constants.dart';

class StrorageDetails extends StatelessWidget {
  const StrorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Storage details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: defaultPadding),

          Chart(),

          // pie chat
          StorageInfoCard(
            title: "Document Files",
            icon: Icons.document_scanner,
            amountOfFiles: "10 GB",
            numberOfFiles: 6978,
          ),
          StorageInfoCard(
            title: "Media Files",
            icon: Icons.play_circle,
            amountOfFiles: "17 GB",
            numberOfFiles: 6948,
          ),
          StorageInfoCard(
            title: "Other Files",
            icon: Icons.file_copy_sharp,
            amountOfFiles: "19 GB",
            numberOfFiles: 6448,
          ),
          StorageInfoCard(
            title: "Unknown",
            icon: Icons.device_unknown,
            amountOfFiles: "18 GB",
            numberOfFiles: 6998,
          ),
        ],
      ),
    );
  }
}
