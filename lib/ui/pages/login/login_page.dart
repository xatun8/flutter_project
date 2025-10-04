import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_colors.dart';
import 'package:onboarding_screens/ui/pages/login/widgets/class.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 229, 231),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Login sehifesi',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w400,
            color: AppColors.primary500,
          ),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Qeydiyyatdan keçin:',
              style: TextStyle(
                color: Color.fromARGB(255, 12, 12, 12),
                fontSize: 28,
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(height: 30),
            CustomInput(hintText: 'email', prefixIcon: Icon(Icons.email)),
            SizedBox(height: 20),
            CustomInput(hintText: 'password', prefixIcon: Icon(Icons.password)),
          ],
        ),
      ),
    );
  }
}
