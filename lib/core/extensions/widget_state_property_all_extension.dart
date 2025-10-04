import 'package:flutter/material.dart';

extension WidgetStatePropertyAllExtension<T> on T {
  WidgetStatePropertyAll<T> get toWspAll => WidgetStatePropertyAll<T>(this);
}
