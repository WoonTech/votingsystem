import "package:flutter/material.dart";

import 'package:flutter/material.dart';
import 'package:polls/Styles/color.dart';
import 'package:votingsystem/Styles/colors.dart';

void error(BuildContext? context, {required String message}){
  ScaffoldMessenger.of(context!).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: AppColors.red,
  )); // SnackBar
}

void success(BuildContext? context, {required String message}){
  ScaffoldMessenger.of(context!).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: AppColors.primaryColor,
  ));
}