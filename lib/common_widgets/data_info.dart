import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class DataInfo extends StatelessWidget {
  const DataInfo(
      {super.key,
      required this.title,
      required this.value,
      this.qtdeElementos});
  final int? qtdeElementos;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: qtdeElementos == null
          ? size.width * 0.9
          : size.width / (qtdeElementos! * 1.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
          ),
          8.height,
          Text(
            value,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
