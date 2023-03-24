import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

Widget customTextField({
  required String label,
  int lines = 1,
  required String hint,
  bool isRequired = false,
}) =>
    Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$label${isRequired ? '*' : ''}"),
            8.height,
            TextFormField(
              maxLines: lines,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(15.0),
                // labelText: label,
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                hintText: hint,
              ),
            ),
          ],
        ),
      ],
    );

Widget customDropdownButtonFormField({
  required String label,
  required List<String> options,
  required String value,
  required Function(String?) onChanged,
  bool isRequired = false,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$label${isRequired ? '*' : ''}"),
        8.height,
        DropdownButtonFormField(
          value: value,
          items: options.map((String option) {
            return DropdownMenuItem(
              value: option.toString(),
              child: Text(option),
            );
          }).toList(),
          onChanged: onChanged,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(8.0),
            // labelText: label,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ],
    );
