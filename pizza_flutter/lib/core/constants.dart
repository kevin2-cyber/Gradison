

import 'package:flutter/material.dart';

class AppConstants {
  Size sizeConfig(BuildContext  context) {
     final kSpacingX = MediaQuery.of(context).size;
     return kSpacingX;
  }

}