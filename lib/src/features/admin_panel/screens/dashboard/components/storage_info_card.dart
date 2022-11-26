import 'package:flutter/material.dart';

import '../../../../../constants/constants.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.amountOfFiles,
    required this.numberOfFiles,
  }) : super(key: key);

  final IconData icon;
  final String title, amountOfFiles;
  final int numberOfFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: primaryColor.withOpacity(0.15),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(defaultPadding)),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: Icon(icon),
          ),
          Expanded(
            child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "$numberOfFiles Files",
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        ?.copyWith(color: Colors.white70),
                  )
                ],
              ),
            ),
          ),
          Text(amountOfFiles),
        ],
      ),
    );
  }
}
