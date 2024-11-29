import 'package:flutter/material.dart';
import 'custom_text_form_field.dart';
import '../../../resourses/colors_manager.dart';
import '../../../resourses/routes_manager.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String? email;
  String? password;
  bool isObscure = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return AutofillGroup(
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            CustomTextField(
              label: 'Mobile Number or Email Address',
              hint: 'Mobile Number or Email Address',
              isFilled: true,
              autoFillHints: const [
                AutofillHints.username,
                AutofillHints.email
              ],
              inputType: TextInputType.emailAddress,
              textDirection: TextDirection.ltr,
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              label: 'password',
              hint: 'password',
              isFilled: true,
              autoFillHints: const [AutofillHints.password],
              inputType: TextInputType.visiblePassword,
              textDirection: TextDirection.ltr,
              isObscure: isObscure,
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
              suffixIcon: IconButton(
                  icon: Icon(
                    isObscure ? Icons.visibility : Icons.visibility_off,
                    color: ColorsManager.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            //login button
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                //with null in onTap the button is disable
                onPressed: (_formKey.currentState?.validate() ?? false)
                    ? () {
                        Navigator.pushNamed(context, Routes.homeRoute);
                      }
                    : null,
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
