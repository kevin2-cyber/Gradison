

import 'package:flutter/material.dart';

class AppConstants {
  Size spacingX(BuildContext  context) {
     final kSpacingX = MediaQuery.of(context).size;
     return kSpacingX;
  }

}