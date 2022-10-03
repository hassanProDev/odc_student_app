import 'package:flutter/material.dart';

class HomeModel {
  String title;
  IconData icon;
  Function? func;

  HomeModel({required this.icon, required this.title, this.func});
}
