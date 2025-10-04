import 'package:flutter/material.dart';


extension ColorFilterExtension on Color {
  ColorFilter get toColorFilter => ColorFilter.mode(this, BlendMode.srcIn);
}
