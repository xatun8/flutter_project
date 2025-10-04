import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_button_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.style,
  });
  final VoidCallback onPressed;
  final String text;
  final ButtonStyle? style;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style ?? AppButtonStyles.primaryButtonStyle,

      onPressed: onPressed,
      child: Text(text),
    );
  }
}
