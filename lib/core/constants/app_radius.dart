import 'package:flutter/widgets.dart';

class AppRadius {
  AppRadius._();

  static const BorderRadius vT40 = BorderRadius.vertical(
    top: Radius.circular(40),
  );
  static const BorderRadius a24 = BorderRadius.all(Radius.circular(24));
  static const BorderRadius a100 = BorderRadius.all(Radius.circular(100));

  static const BorderRadius tL40 = BorderRadius.only(
    topLeft: Radius.circular(40),
  );
}
