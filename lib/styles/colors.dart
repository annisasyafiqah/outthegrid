import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  //One instance, needs factory
  static AppColors _instance;
  factory AppColors() => _instance ??= AppColors._();

  AppColors._();

  static const primaryColor = Color.fromARGB(255, 133, 214, 255);
  static const darkGrey = Color.fromARGB(255, 28, 29, 35);
}
