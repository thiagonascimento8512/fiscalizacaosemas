import 'package:flutter/material.dart';

class DrawerItemModel {
  String? title;
  Widget? widget;
  IconData? icon;
  VoidCallback? onTap;

  DrawerItemModel({this.title, this.widget, this.icon, this.onTap});
}
