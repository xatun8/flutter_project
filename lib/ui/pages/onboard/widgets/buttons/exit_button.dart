import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_button_styles.dart';
import 'package:onboarding_screens/core/constants/app_colors.dart';
import 'package:onboarding_screens/core/constants/app_padding.dart';

import 'package:onboarding_screens/core/extensions/widget_state_property_all_extension.dart';
import 'package:onboarding_screens/core/helpers/pager.dart';
import 'package:onboarding_screens/ui/widgets/custom_button.dart';

class ExitButton extends StatelessWidget {
  const ExitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.h24,
      child: CustomButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("Çıxış təsdiqi"),
              content: const Text("Proqramdan çıxmaq istəyirsinizmi?"),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Xeyr"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => Pager.loginPager),
                    );
                  },
                  child: Text("Bəli"),
                ),
              ],
            ),
          );
        },
        text: 'Exit',
        style: AppButtonStyles.primaryButtonStyle.copyWith(
          backgroundColor: AppColors.primary500.toWspAll,
          foregroundColor: AppColors.white.toWspAll,
          minimumSize: const Size(100, 24).toWspAll,
        ),
      ),
    );
  }
}
