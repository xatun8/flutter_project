import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_colors.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    this.obscureText = false,
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.keyboardType,
    this.suffixIcon,
  }) : super(key: key);

  final String hintText;
  final Widget prefixIcon;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 380,
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          fillColor: AppColors.greyscale100,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: const BorderSide(color: Color(0xff9E9E9E), width: 1),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26),
            borderSide: BorderSide.none,
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),

          contentPadding: const EdgeInsets.symmetric(vertical: 18),
          alignLabelWithHint: true,
        ),
      ),
    );
  }
}
