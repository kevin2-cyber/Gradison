

import 'package:flutter/material.dart';

class AppConstants {

  static Size sizeConfig(BuildContext context, double size){
    var kSpacingX = MediaQuery.of(context).size;
    return kSpacingX * size;
  }
}