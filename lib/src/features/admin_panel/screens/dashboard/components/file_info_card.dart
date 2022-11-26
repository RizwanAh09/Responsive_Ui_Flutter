import 'package:flutter/material.dart';

import '../../../../../constants/constants.dart';
import '../../../models/my_files.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding - 6),
      decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: info.color.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child:
                    const Icon(Icons.file_copy, color: Colors.orange, size: 20),
              ),
              const Icon(Icons.more_vert, color: Colors.white)
            ],
          ),
          Text(info.title, maxLines: 1, overflow: TextOverflow.ellipsis),
          ProgressLine(color: info.color, percentage: info.percentage),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${info.numOfFiles}",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.white70),
              ),
              Text(
                "${info.totalStorage} Files",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = primaryColor,
    required this.percentage,
  }) : super(key: key);

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: color.withOpacity(0.1)),
        ),
        LayoutBuilder(
            builder: (context, constraints) => Container(
                  width: constraints.maxWidth * (percentage / 100),
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: color,
                  ),
                ))
      ],
    );
  }
}
