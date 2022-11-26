import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/responsive.dart';
import 'package:flutter_admin_panel/src/features/admin_panel/models/my_files.dart';

import '../../../../../constants/constants.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("My Files",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.apply(color: Colors.white)),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(padding:  EdgeInsets.symmetric(
                        vertical: defaultPadding / (Responsive.isMobile(context) ? 2 : 1), horizontal: defaultPadding)),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Add New")),
          ],
        ),
        const SizedBox(height: defaultPadding),
        // FileInfoCardGridView(),

        Responsive(
            mobile: FileInfoCardGridView(
                crossAxisCount: _size.width < 650 ? 2 : 4,
                childAspectRatio: _size.width<650 ? 1.3 : 1),
            tablet: FileInfoCardGridView(),
            desktop: FileInfoCardGridView(
              childAspectRatio: _size.width<1400?1.1 : 1.4,
            )
        )
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoFiles.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          mainAxisSpacing: defaultPadding,
          crossAxisSpacing: defaultPadding),
      itemBuilder: (context, index) {
        return FileInfoCard(info: demoFiles[index]);
      },
    );
  }
}
