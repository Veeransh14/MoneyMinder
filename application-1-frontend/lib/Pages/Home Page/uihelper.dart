import 'package:flutter/material.dart';

class UiHelper {
  static CustomAlertBox(BuildContext context, String text){
   return showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: Text(text),
    );
   });
  }
  }