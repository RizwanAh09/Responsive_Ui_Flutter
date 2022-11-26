import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/responsive.dart';
import 'package:flutter_admin_panel/src/constants/constants.dart';
import '../../models/recent_files.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
             Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        const MyFiles(),
                        const SizedBox(height: defaultPadding),
                        // Recent Files
                        Container(
                          padding: const EdgeInsets.all(defaultPadding),
                          decoration: const BoxDecoration(
                              color: secondaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Recent Files",
                                  style: Theme.of(context).textTheme.subtitle1),
                              SizedBox(
                                width: double.infinity,
                                child: DataTable(
                                    horizontalMargin: 0,
                                    columnSpacing: defaultPadding,
                                    columns: const [
                                      DataColumn(
                                        label: Text("File Name"),
                                      ),
                                      DataColumn(
                                        label: Text("Date"),
                                      ),
                                      DataColumn(
                                        label: Text("Size"),
                                      ),
                                    ],
                                    rows: List.generate(
                                        recentFiles.length,
                                        (index) => recentFilesDataRow(
                                            recentFiles[index]))),
                              )
                            ],
                          ),
                        ),

                        if (Responsive.isMobile(context))
                        const SizedBox(height: defaultPadding),
                        if (Responsive.isMobile(context))
                        const StrorageDetails(),
                      ],
                    )),

                if (!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding),
                //we want to show this only on big screen
                //if the screen is less than 850 we dont want to show this
                if (!Responsive.isMobile(context))
                  const Expanded(flex: 2, child: StrorageDetails()),
              ],
            )
          ],
        ),
      ),
    );
  }

  DataRow recentFilesDataRow(RecentFiles fileInfo) {
    return DataRow(cells: [
      DataCell(
        Row(
          children: [
            Icon(fileInfo.icon),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title),
            )
          ],
        ),
      ),
      DataCell(Text(fileInfo.date)),
      DataCell(Text(fileInfo.size)),
    ]);
  }
}
