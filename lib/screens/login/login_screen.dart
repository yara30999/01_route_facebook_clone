import 'package:flutter/material.dart';
import '../../resourses/assets_manager.dart';
import '../../resourses/colors_manager.dart';
import '../../resourses/styles_manager.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 16,
              left: 16,
            ),
            child: SizedBox(
              // a finite height to use expanded, because we have SingleChildScrollView
              height: 800,
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Image.asset(
                    PngAssets.appLogo,
                    width: 90,
                  ),
                  const SizedBox(height: 60),
                  const LoginForm(),
                  //create forgot password text button
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'forgot password?',
                      style: Styles.style16Bold()
                          .copyWith(color: ColorsManager.grey),
                    ),
                  ),
                  const Spacer(),
                  //create account button
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                            color: ColorsManager.blue, width: 2),
                        backgroundColor: Colors.white,
                        foregroundColor: ColorsManager.blue,
                      ),
                      onPressed: () {},
                      child: const Text("Create Account"),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    PngAssets.meta,
                    fit: BoxFit.cover,
                    width: 100,
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
